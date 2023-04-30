import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class OfferModel extends Equatable {
  final String id;
  final String price;
  final String productDescription;
  final String productId;
  final String productImage;
  final String productName;

  const OfferModel({
    required this.id,
    required this.price,
    required this.productDescription,
    required this.productId,
    required this.productImage,
    required this.productName,
  });

  OfferModel copyWith({
    String? id,
    String? price,
    String? productDescription,
    String? productId,
    String? productImage,
    String? productName,
  }) =>
      OfferModel(
        id: id ?? this.id,
        price: price ?? this.price,
        productDescription: productDescription ?? this.productDescription,
        productId: productId ?? this.productId,
        productImage: productImage ?? this.productImage,
        productName: productName ?? this.productName,
      );

  @override
  List<Object?> get props => [
        id,
        price,
        productDescription,
        productName,
        productId,
        productImage,
      ];
}
