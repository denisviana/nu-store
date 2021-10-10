import 'package:my_app/core/domain/entities/customer/customer_entity.dart';
import 'package:my_app/graphql/graphql_api.dart';

import '../offer_adapter/offer_adapter.dart';

extension CustomerExtension on Viewer$QueryRoot$Customer {
  CustomerEntity get toEntity => CustomerEntity(
        name: name,
        balance: balance,
        offers: offers.map((e) => e?.toEntity).toList(),
      );
}
