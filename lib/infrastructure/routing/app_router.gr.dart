// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../presentation/home_screen/home_screen.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i2.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig('/#redirect',
            path: '/', redirectTo: '/Home-screen', fullMatch: true),
        _i2.RouteConfig(HomeScreen.name, path: '/Home-screen')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i2.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/Home-screen');

  static const String name = 'HomeScreen';
}
