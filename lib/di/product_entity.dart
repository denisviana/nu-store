import 'package:meta/meta.dart';

@immutable
class ProductEntity {
  final String id;
  final String name;
  final String description;
  final String image;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
  });
}
