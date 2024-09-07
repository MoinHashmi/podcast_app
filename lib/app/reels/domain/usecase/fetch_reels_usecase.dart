import 'package:podcast_app/app/reels/data/repository/reels_repository.dart';
import 'package:podcast_app/app/reels/domain/entity/reels_data/reels_data.dart';
import 'package:podcast_app/core/network_manager/network_manager_exceptions.dart';

class FetchReelsUsecase {

  final ReelsRepository _reelsRepo;

  FetchReelsUsecase(this._reelsRepo);

  Future<ReelsData> call(int page, int limit) async{
    try{
      return await _reelsRepo.fetchReels(page: page, limit: limit);
    } on NetworkManagerError catch (_){
      rethrow;
    } catch (_) {
      rethrow;
    }
  }

}