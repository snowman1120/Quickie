import 'settings_repository.dart';
import 'package:get_it/get_it.dart';

// import 'services.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // page state
  getIt.registerLazySingleton<SettingReposiroty>(() => SettingReposiroty());
}
