import 'package:my_app/core/data/model/resource.dart';
import 'package:my_app/core/domain/entities/customer/customer_entity.dart';

abstract class OfferRepository {
  Future<Resource<CustomerEntity?>> purchaseOffer({required String offerId});
}
