import 'package:podcast_app/app/reels/data/model/reels_data/reels_data_model.dart';
import 'package:podcast_app/core/network_manager/network_manager.dart';
import 'package:podcast_app/core/network_manager/network_manager_exceptions.dart';
import 'package:podcast_app/core/network_manager/response_model/reels_api_response_model.dart';

abstract class _BaseReelsApi {
  Future<ReelsDataModel> fetchReels({required int page, required int limit});
}

class ReelsApi implements _BaseReelsApi {
  final _network = NetworkManager.instance;

  @override
  Future<ReelsDataModel> fetchReels(
      {required int page, required int limit}) async {
    try {
      final resp = await _network.sendApiCall(
        endpoint: '/bytes/all?page=$page&limit=$limit&country=United+States',
        fromJson: ReelsApiResponseModel.fromJsonForIsolate,
        requestType: RequestType.get,
      );
      return resp.data;
    } on NetworkManagerError catch (_) {
      rethrow;
    } catch (_) {
      rethrow;
    }
  }
}
