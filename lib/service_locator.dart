import 'package:get_it/get_it.dart';
import 'package:ithuta/core/services/global_configuration/global_configuration.dart';
import 'package:ithuta/router.gr.dart';

final serviceLocator = GetIt.instance;
final _globalConfiguration = GlobalConfiguration();

Future<void> registerServices() async {
  _initRouter();
  await _loadGlobalConfiguration();
}

void _initRouter() {
  serviceLocator.registerLazySingleton<AppRouter>(() => AppRouter());
}

Future<void> _loadGlobalConfiguration() async {}
