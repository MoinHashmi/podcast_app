import 'package:podcast_app/app/reels/data/repository/reels_repository.dart';
import 'package:podcast_app/app/reels/data/source/reels_api.dart';
import 'package:podcast_app/core/service_locator/service_locator_config.dart';

Future<void> registerRepositories() async {
  locator.registerLazySingleton<ReelsRepository>(
      () => ReelsRepository(ReelsApi()));
}
