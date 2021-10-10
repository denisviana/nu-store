import 'package:get/get.dart';
import 'package:my_app/app/pages/home/bindings/home_bindings.dart';
import 'package:my_app/app/pages/home/home_page.dart';
import 'package:my_app/app/pages/offer_details/bindings/offer_bindings.dart';
import 'package:my_app/app/pages/offer_details/offer_page.dart';
import 'package:my_app/core/domain/entities/customer/customer_entity.dart';

abstract class Routes {
  static const initial = '/';
  static const offerDetails = '/offer-details';
}

mixin AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.initial,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage<CustomerEntity?>(
        name: Routes.offerDetails,
        page: () => OfferPage(),
        binding: OfferBinding())
  ];
}
