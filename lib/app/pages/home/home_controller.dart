import 'package:get/get.dart';
import 'package:my_app/app/pages/home/model/home_view_model.dart';
import 'package:my_app/core/data/model/resource.dart';

class HomeController extends GetxController {
  //region Private
  //endregion

  //region State
  final state = Resource.success<HomeViewModel>(
      data: const HomeViewModel(
    userName: 'Denis',
    userBalance: 'R\$ 12.000,00',
    offers: [],
  )).obs;
//endregion

//region Functions
//endregion

}
