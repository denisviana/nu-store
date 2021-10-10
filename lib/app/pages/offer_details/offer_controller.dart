import 'package:get/get.dart';
import 'package:my_app/app/pages/home/model/offer_model.dart';
import 'package:my_app/core/data/model/resource.dart';

class OfferController extends GetxController {
  //region Private
  //endregion

  //region State
  final state = Resource.success<OfferModel>().obs;

  //endregion

  //region Functions
  @override
  void onInit() {
    super.onInit();
    final OfferModel arguments = Get.arguments;
    state.value = Resource.success(data: arguments);
  }
//endregion

}
