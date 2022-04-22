import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_codebase/infrastructure/di/app_bloc_providers.dart';

import 'infrastructure/di/app_initializer.dart';
import 'infrastructure/flavor/flavor_config.dart';
import 'infrastructure/routing/app_router.gr.dart';

void main() async {
  await AppInitializer.setupPrerequisites(
    Flavor.production,
  );

  runZonedGuarded(
    () async {
      runApp(MyApp());
    },
    (error, stack) {
      log("App Error with: $error");

      log("App Error stack: $stack");
    },
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _rootRouter = AppRouter(
      // authGuard: AuthGuard(),
      );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _rootRouter.delegate(),
      routeInformationProvider: _rootRouter.routeInfoProvider(),
      routeInformationParser: _rootRouter.defaultRouteParser(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (_, router) {
        return MultiBlocProvider(providers: appProviders, child: router!);
      },
    );
  }
}
