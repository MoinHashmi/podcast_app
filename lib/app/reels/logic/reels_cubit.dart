import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:podcast_app/app/reels/domain/entity/video/video.dart';
import 'package:podcast_app/app/reels/domain/usecase/fetch_reels_usecase.dart';
import 'package:video_player/video_player.dart';

part 'reels_cubit_state.dart';

part 'reels_cubit.freezed.dart';

class ReelsCubit extends Cubit<ReelsCubitState> {
  final FetchReelsUsecase _fetchReelsUsecase;

  int currentPage = 1;
  final int limit = 10;
  bool hasReachedMax = false;
  List<Video> cachedReels = [];
  final Map<String, VideoPlayerController> _cachedVideoPlayerControllers = {};

  ReelsCubit(this._fetchReelsUsecase) : super(const _Initial());

  Future<void> fetchReels() async {
    if (hasReachedMax) return;

    emit(const _Loading());

    try {
      final reelsData = await _fetchReelsUsecase.call(currentPage, limit);
      final newReels = reelsData.data;

      if (newReels.isEmpty ||
          reelsData.metaData.page >=
              reelsData.metaData.total / reelsData.metaData.limit) {
        hasReachedMax = true;
      } else {
        cachedReels.addAll(newReels);
        currentPage++;
      }

      if(_cachedVideoPlayerControllers[cachedReels.first.cdnUrl] == null){
        await _initializeFirstController(newReels.first);
      }
      preloadThumbnails(newReels);
      _initializeControllers(newReels);
      emit(_Loaded(cachedReels, hasReachedMax));
    } catch (error) {
      emit(_Error(error.toString()));
    }
  }

  void preloadThumbnails(List<Video> reels) {
    reels.forEach((reel) {
      CachedNetworkImage(
        imageUrl: reel.thumbCdnUrl,
        fadeInDuration: Duration.zero,
      );
    });
  }

  _initializeFirstController(Video reel) async {
    final controller = VideoPlayerController.networkUrl(
      Uri.parse(reel.cdnUrl),
    );
    await controller.initialize();
    _cachedVideoPlayerControllers[reel.cdnUrl] = controller;
  }

  Future<void> _initializeControllers(List<Video> reels) async {
    debugPrint('going to initialize controllers');
    for (var reel in reels) {
      final controller = VideoPlayerController.networkUrl(
        Uri.parse(reel.cdnUrl),
      );
      await controller.initialize();
      debugPrint('Going to add controller for: ${reel.user.userName}');
      _cachedVideoPlayerControllers[reel.cdnUrl] = controller;
    }
  }

  VideoPlayerController? getVideoController(String url) =>
      _cachedVideoPlayerControllers[url];

  void resetPagination() {
    currentPage = 1;
    hasReachedMax = false;
    cachedReels.clear();
  }
}
