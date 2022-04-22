import 'package:flutter/cupertino.dart';

import '../flavor/flavor_config.dart';
import 'app_binding.dart';

///Will have everything needs to be configured before the app run
class AppInitializer {
  ///Setup firebase services and handles any shared logic
  static Future setupPrerequisites(Flavor flavor) async {
    ///because binding should be initialized before calling runApp.
    WidgetsFlutterBinding.ensureInitialized();

    ///TODO: return firebase back
    ///initialize firebase app to inject firebase services later
    // await Firebase.initializeApp();

    ///dependencies injection
    await AppBinding.setupInjection(flavor);
  }
}
