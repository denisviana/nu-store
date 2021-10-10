import 'package:meta/meta.dart';
import 'package:my_app/core/domain/entities/offer/offer_entity.dart';

@immutable
class CustomerEntity {
  final String name;
  final int balance;
  final List<OfferEntity?> offers;

  const CustomerEntity({
    required this.name,
    required this.balance,
    required this.offers,
  });
}
