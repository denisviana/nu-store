import 'package:my_app/core/data/model/resource.dart';

abstract class OfferRepository {
  Future<Resource<dynamic>> purchaseOffer({required String offerId});
}
