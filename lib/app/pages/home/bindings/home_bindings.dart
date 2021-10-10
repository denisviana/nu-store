import 'package:get/get.dart';
import 'package:my_app/app/pages/home/home_controller.dart';
import 'package:my_app/di/di.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(getIt()));
  }
}
