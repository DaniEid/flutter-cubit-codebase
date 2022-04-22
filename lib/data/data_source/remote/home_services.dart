import 'package:injectable/injectable.dart';

@injectable
class HomeServices {
  Future<String> getDate() async {
    await Future.delayed(const Duration(seconds: 3));
    return "Called the API successfully";
  }
}
