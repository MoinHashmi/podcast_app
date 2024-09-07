import 'package:get_it/get_it.dart';
import 'package:podcast_app/core/service_locator/repositories.dart';

final locator = GetIt.instance;

Future<void> configureServiceLocators() async {
  await registerRepositories();
}