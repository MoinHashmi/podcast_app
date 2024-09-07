import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:podcast_app/app/reels/data/repository/reels_repository.dart';
import 'package:podcast_app/app/reels/domain/usecase/fetch_reels_usecase.dart';
import 'package:podcast_app/app/reels/logic/reels_cubit.dart';
import 'package:podcast_app/app/reels/presentation/widget/reel_loader_view.dart';
import 'package:podcast_app/app/reels/presentation/widget/reel_video_item.dart';
import 'package:podcast_app/core/service_locator/service_locator_config.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  _ReelsScreenState createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  late ReelsCubit _reelsBloc;
  final PageController _pageController = PageController();
  int currentPageIndex = 0;
  bool isFetching = false;
  bool _isMute = false;

  @override
  void initState() {
    super.initState();
    _reelsBloc = ReelsCubit(FetchReelsUsecase(locator<ReelsRepository>()));
    _reelsBloc.fetchReels();

    _pageController.addListener(_scrollListener);
  }

  void _scrollListener() {
    final maxScroll = _pageController.position.maxScrollExtent;
    final currentScroll = _pageController.position.pixels;

    if (currentScroll >= maxScroll - 100 &&
        !_reelsBloc.hasReachedMax &&
        !isFetching) {
      setState(() {
        isFetching = true;
      });
      _reelsBloc.fetchReels().whenComplete(() {
        setState(() {
          isFetching = false;
        });
      });
    }
  }

  @override
  void dispose() {
    _pageController.removeListener(_scrollListener);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _reelsBloc,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: BlocBuilder<ReelsCubit, ReelsCubitState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => _reelsBloc.cachedReels.isEmpty
                  ? const ReelLoaderView()
                  : _buildReelsView(),
              loaded: (reels, hasReachedMax) => _buildReelsView(),
              error: (message) => Center(child: Text('Error: $message')),
            );
          },
        ),
      ),
    );
  }

  Widget _buildReelsView() {
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      itemCount: _reelsBloc.cachedReels.length,
      onPageChanged: (index) {
        debugPrint('ON PAGE CHANGE CALLED $index');
        setState(() {
          currentPageIndex = index;
        });
      },
      itemBuilder: (context, index) {
        return ReelVideoItem(
          video: _reelsBloc.cachedReels[index],
          isCurrent: index == currentPageIndex,
          videoPlayerController: _reelsBloc
              .getVideoController(_reelsBloc.cachedReels[index].cdnUrl),
          isMuted: _isMute,
          onCompletePlaying: () {
            debugPrint('END PLAYING on INDEX: $currentPageIndex');
            int nextPage = currentPageIndex + 1;
            if (nextPage < _reelsBloc.cachedReels.length) {
              _goToNextPage();
            }
          },
          onMuteChange: (isMute){
            setState(() {
              _isMute = isMute;
            });
          },
        );
      },
    );
  }

  void _goToNextPage() {
    if (_pageController.hasClients) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
