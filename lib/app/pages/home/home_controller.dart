import 'package:get/get.dart';
import 'package:my_app/app/pages/home/model/home_view_model.dart';
import 'package:my_app/app/pages/home/model/offer_model.dart';
import 'package:my_app/core/data/model/resource.dart';

class HomeController extends GetxController {
  //region Private
  //endregion

  //region State
  final state = Resource.success<HomeViewModel>(
    data: const HomeViewModel(
      userName: 'Denis',
      userBalance: 'R\$ 12.000,00',
      offers: [
        OfferModel(
          id: '1',
          price: 'R\$ 124,00',
          productDescription:
              'The Portal Gun is a gadget that allows the user(s) to travel between different universes/dimensions/realities.',
          productId: '12',
          productName: 'Portal Gun',
          productImage:
              'https://vignette.wikia.nocookie.net/rickandmorty/images/8/86/Microverse_Battery.png/revision/latest/scale-to-width-down/310?cb=20160910010946',
        ),
        OfferModel(
          id: '1',
          price: 'R\$ 124,00',
          productDescription:
              'The Portal Gun is a gadget that allows the user(s) to travel between different universes/dimensions/realities.',
          productId: '12',
          productName: 'Portal Gun',
          productImage:
              'https://vignette.wikia.nocookie.net/rickandmorty/images/8/86/Microverse_Battery.png/revision/latest/scale-to-width-down/310?cb=20160910010946',
        ),
        OfferModel(
          id: '1',
          price: 'R\$ 124,00',
          productDescription:
              'The Portal Gun is a gadget that allows the user(s) to travel between different universes/dimensions/realities.',
          productId: '12',
          productName: 'Portal Gun',
          productImage:
              'https://vignette.wikia.nocookie.net/rickandmorty/images/8/86/Microverse_Battery.png/revision/latest/scale-to-width-down/310?cb=20160910010946',
        ),
        OfferModel(
          id: '1',
          price: 'R\$ 124,00',
          productDescription:
              'The Portal Gun is a gadget that allows the user(s) to travel between different universes/dimensions/realities.',
          productId: '12',
          productName: 'Portal Gun',
          productImage:
              'https://vignette.wikia.nocookie.net/rickandmorty/images/8/86/Microverse_Battery.png/revision/latest/scale-to-width-down/310?cb=20160910010946',
        ),
        OfferModel(
          id: '1',
          price: 'R\$ 124,00',
          productDescription:
              'The Portal Gun is a gadget that allows the user(s) to travel between different universes/dimensions/realities.',
          productId: '12',
          productName: 'Portal Gun',
          productImage:
              'https://vignette.wikia.nocookie.net/rickandmorty/images/8/86/Microverse_Battery.png/revision/latest/scale-to-width-down/310?cb=20160910010946',
        )
      ],
    ),
  ).obs;
//endregion

//region Functions
//endregion

}
