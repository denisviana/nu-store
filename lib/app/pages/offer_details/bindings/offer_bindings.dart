import 'package:get/get.dart';
import 'package:my_app/app/pages/offer_details/offer_controller.dart';

class OfferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OfferController());
  }
}
