import 'package:my_app/core/domain/entities/offer/offer_entity.dart';
import 'package:my_app/graphql/graphql_api.dart';

import '../product_adapter/product_adapter.dart';

extension ViewerCustomerExtension on Viewer$QueryRoot$Customer$Offer {
  OfferEntity get toEntity => OfferEntity(
        id: id,
        price: price,
        product: product.toEntity,
      );
}

extension PurchaseCustomerExtension on Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer {
  OfferEntity get toEntity => OfferEntity(
    id:  id,
    price: price,
    product: product.toEntity,
  );
}
