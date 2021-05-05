import 'package:get/get.dart';

import 'radio_life_app_controller.dart';

class RadioLifeAppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<RadioLifeAppController>(RadioLifeAppController());
  }
}
