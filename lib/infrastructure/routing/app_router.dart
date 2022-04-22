import 'package:auto_route/annotations.dart';
import 'package:flutter_cubit_codebase/infrastructure/routing/route_paths.dart';

import '../../presentation/home_screen/home_screen.dart';

///Will hold all the routes in our app
@CupertinoAutoRouter(
  replaceInRouteName: 'Page|Dialog,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, path: RoutePaths.homeScreen, initial: true),
  ],
)
// extend the generated private router
class $AppRouter {}
