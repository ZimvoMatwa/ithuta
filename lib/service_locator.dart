import 'package:get_it/get_it.dart';
import 'package:ithuta/core/services/global_configuration/global_configuration.dart';
import 'package:ithuta/router.gr.dart';

final serviceLocator = GetIt.instance;
final _globalConfiguration = GlobalConfiguration();

void registerServices() {
  _initRouter();
}

void _initRouter() {
  serviceLocator.registerLazySingleton<AppRouter>(() => AppRouter());
}
