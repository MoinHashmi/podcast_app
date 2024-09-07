
import 'package:podcast_app/app/reels/data/source/reels_api.dart';
import 'package:podcast_app/app/reels/domain/entity/reels_data/reels_data.dart';
import 'package:podcast_app/core/network_manager/network_manager_exceptions.dart';

abstract class _BaseReelsRepository {
  Future<ReelsData> fetchReels({required int page, required int limit});
}

class ReelsRepository implements _BaseReelsRepository{

  final ReelsApi _api;

  ReelsRepository(this._api);

  @override
  Future<ReelsData> fetchReels({required int page, required int limit}) async {
    try{
      final reels = await _api.fetchReels(page: page, limit: limit);
      return reels.toEntity();
    } on NetworkManagerError catch (e){
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

}