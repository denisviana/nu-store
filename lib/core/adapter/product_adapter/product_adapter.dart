import 'package:my_app/di/product_entity.dart';
import 'package:my_app/graphql/graphql_api.dart';

extension ViewerProductExtension on Viewer$QueryRoot$Customer$Offer$Product {
  ProductEntity get toEntity => ProductEntity(
        id: id,
        name: name,
        description: description,
        image: image,
      );
}

extension PurchaseProductExtension
    on Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer$Product {
  ProductEntity get toEntity => ProductEntity(
        id: id,
        name: name,
        description: description,
        image: image,
      );
}
