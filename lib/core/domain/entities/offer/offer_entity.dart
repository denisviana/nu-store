import 'package:meta/meta.dart';
import 'package:my_app/di/product_entity.dart';

@immutable
class OfferEntity {
  final String id;
  final int price;
  final ProductEntity product;

  const OfferEntity({
    required this.id,
    required this.price,
    required this.product,
  });
}
