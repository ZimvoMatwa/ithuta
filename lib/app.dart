import 'package:flutter/material.dart';
import 'package:ithuta/router.gr.dart';
import 'package:ithuta/service_locator.dart';

class Ithuta extends StatelessWidget {
  const Ithuta({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = serviceLocator<AppRouter>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(initialRoutes: [
        const HomeRoute(),
      ]),
    );
  }
}
