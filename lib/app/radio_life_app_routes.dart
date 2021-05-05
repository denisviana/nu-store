
import 'package:get/get.dart';

abstract class Routes {
  static String initial = '/';
  static const signIn = '/sign-in';
  static const signUp = '/sign-up';
  static const main = '/main';
  static const account = '/account';
  static const resetPassword = '/reset-password';
}

mixin RadioLifeAppRoutes {
  static List<GetPage> routes = [];
}
