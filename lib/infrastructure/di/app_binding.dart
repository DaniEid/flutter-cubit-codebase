import 'dart:developer';

import '../flavor/flavor_config.dart';
import 'inject_config.dart';

/// injecting app main dependencies so can be accessed from everywhere
class AppBinding {
  ///The starting point
  ///The order of the called function is important
  static Future<void> setupInjection(Flavor flavor) async {
    ///injectable and get it configuration
    configureDependencies();

    _injectFlavor(flavor);
    await _injectNetworkingDependencies();
  }

  ///Calls [_injectDioForNetworking] prepares base URL
  static Future _injectNetworkingDependencies() async {
    //  final dio = await _injectDioForNetworking();
    final baseUrl = getIt.get<FlavorConfig>().baseUrl;
    log("BaseUrl from inject: $baseUrl");
  }

  ///creating Dio instance to be injected later withing the services,
  /// and assign custom interceptor
  /// Note: order of interceptors matters
  // static Future<Dio> _injectDioForNetworking() async {
  //   final dio = Dio();
  //
  //   ///attach app's interceptor
  //   dio.interceptors.add(AppInterceptor());
  //
  //   getIt.registerSingleton(dio);
  //
  //   return dio;
  // }

  ///prepare flavor config depending on the selected passed [flavor]
  static void _injectFlavor(Flavor flavor) {
    FlavorConfig flavorConfig;
    switch (flavor) {
      case Flavor.dev:
        flavorConfig = FlavorConfig(
            flavor: Flavor.dev, baseUrl: 'https://dev.url.com/api');
        break;
      case Flavor.beta:
        flavorConfig = FlavorConfig(
            flavor: Flavor.beta, baseUrl: 'https://beta.url.com/api');
        break;
      case Flavor.production:
        flavorConfig = FlavorConfig(
            flavor: Flavor.production, baseUrl: 'https://url.com/api');

        break;
    }

    ///Register the flavor with our get it
    getIt.registerSingleton(flavorConfig);
  }
}
