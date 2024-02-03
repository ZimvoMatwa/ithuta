import 'package:auto_route/auto_route.dart';
import 'package:ithuta/features/home/presentation/pages/home_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(page: HomePage, path: '/', initial: true),
])
class $AppRouter {}
