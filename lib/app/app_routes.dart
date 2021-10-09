import 'package:get/get.dart';
import 'package:my_app/app/pages/home/bindings/home_bindings.dart';
import 'package:my_app/app/pages/home/home_page.dart';

abstract class Routes {
  static const initial = '/';
}

mixin AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.initial,
      page: () => HomePage(),
      binding: HomeBinding(),
    )
  ];
}
