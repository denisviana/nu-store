// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer$Product
    _$Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer$ProductFromJson(
            Map<String, dynamic> json) =>
        Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer$Product()
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..description = json['description'] as String
          ..image = json['image'] as String;

Map<String, dynamic>
    _$Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer$ProductToJson(
            Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer$Product
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'description': instance.description,
          'image': instance.image,
        };

Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer
    _$Purchase$MutationRoot$PurchaseMutationResponse$Customer$OfferFromJson(
            Map<String, dynamic> json) =>
        Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer()
          ..id = json['id'] as String
          ..price = json['price'] as int
          ..product =
              Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer$Product
                  .fromJson(json['product'] as Map<String, dynamic>);

Map<String, dynamic>
    _$Purchase$MutationRoot$PurchaseMutationResponse$Customer$OfferToJson(
            Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'price': instance.price,
          'product': instance.product.toJson(),
        };

Purchase$MutationRoot$PurchaseMutationResponse$Customer
    _$Purchase$MutationRoot$PurchaseMutationResponse$CustomerFromJson(
            Map<String, dynamic> json) =>
        Purchase$MutationRoot$PurchaseMutationResponse$Customer()
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..balance = json['balance'] as int
          ..offers = (json['offers'] as List<dynamic>)
              .map((e) => e == null
                  ? null
                  : Purchase$MutationRoot$PurchaseMutationResponse$Customer$Offer
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$Purchase$MutationRoot$PurchaseMutationResponse$CustomerToJson(
            Purchase$MutationRoot$PurchaseMutationResponse$Customer instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'balance': instance.balance,
          'offers': instance.offers.map((e) => e?.toJson()).toList(),
        };

Purchase$MutationRoot$PurchaseMutationResponse
    _$Purchase$MutationRoot$PurchaseMutationResponseFromJson(
            Map<String, dynamic> json) =>
        Purchase$MutationRoot$PurchaseMutationResponse()
          ..customer =
              Purchase$MutationRoot$PurchaseMutationResponse$Customer.fromJson(
                  json['customer'] as Map<String, dynamic>)
          ..success = json['success'] as bool
          ..errorMessage = json['errorMessage'] as String?;

Map<String, dynamic> _$Purchase$MutationRoot$PurchaseMutationResponseToJson(
        Purchase$MutationRoot$PurchaseMutationResponse instance) =>
    <String, dynamic>{
      'customer': instance.customer.toJson(),
      'success': instance.success,
      'errorMessage': instance.errorMessage,
    };

Purchase$MutationRoot _$Purchase$MutationRootFromJson(
        Map<String, dynamic> json) =>
    Purchase$MutationRoot()
      ..purchase = json['purchase'] == null
          ? null
          : Purchase$MutationRoot$PurchaseMutationResponse.fromJson(
              json['purchase'] as Map<String, dynamic>);

Map<String, dynamic> _$Purchase$MutationRootToJson(
        Purchase$MutationRoot instance) =>
    <String, dynamic>{
      'purchase': instance.purchase?.toJson(),
    };

Viewer$QueryRoot$Customer$Offer$Product
    _$Viewer$QueryRoot$Customer$Offer$ProductFromJson(
            Map<String, dynamic> json) =>
        Viewer$QueryRoot$Customer$Offer$Product()
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..description = json['description'] as String
          ..image = json['image'] as String;

Map<String, dynamic> _$Viewer$QueryRoot$Customer$Offer$ProductToJson(
        Viewer$QueryRoot$Customer$Offer$Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
    };

Viewer$QueryRoot$Customer$Offer _$Viewer$QueryRoot$Customer$OfferFromJson(
        Map<String, dynamic> json) =>
    Viewer$QueryRoot$Customer$Offer()
      ..id = json['id'] as String
      ..price = json['price'] as int
      ..product = Viewer$QueryRoot$Customer$Offer$Product.fromJson(
          json['product'] as Map<String, dynamic>);

Map<String, dynamic> _$Viewer$QueryRoot$Customer$OfferToJson(
        Viewer$QueryRoot$Customer$Offer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'product': instance.product.toJson(),
    };

Viewer$QueryRoot$Customer _$Viewer$QueryRoot$CustomerFromJson(
        Map<String, dynamic> json) =>
    Viewer$QueryRoot$Customer()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..balance = json['balance'] as int
      ..offers = (json['offers'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : Viewer$QueryRoot$Customer$Offer.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Viewer$QueryRoot$CustomerToJson(
        Viewer$QueryRoot$Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'balance': instance.balance,
      'offers': instance.offers.map((e) => e?.toJson()).toList(),
    };

Viewer$QueryRoot _$Viewer$QueryRootFromJson(Map<String, dynamic> json) =>
    Viewer$QueryRoot()
      ..viewer = json['viewer'] == null
          ? null
          : Viewer$QueryRoot$Customer.fromJson(
              json['viewer'] as Map<String, dynamic>);

Map<String, dynamic> _$Viewer$QueryRootToJson(Viewer$QueryRoot instance) =>
    <String, dynamic>{
      'viewer': instance.viewer?.toJson(),
    };

PurchaseArguments _$PurchaseArgumentsFromJson(Map<String, dynamic> json) =>
    PurchaseArguments(
      offerId: json['offerId'] as String,
    );

Map<String, dynamic> _$PurchaseArgumentsToJson(PurchaseArguments instance) =>
    <String, dynamic>{
      'offerId': instance.offerId,
    };
