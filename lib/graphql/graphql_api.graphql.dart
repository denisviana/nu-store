// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Purchase$MutationRoot$PurchaseMutationResponse extends JsonSerializable
    with EquatableMixin {
  Purchase$MutationRoot$PurchaseMutationResponse();

  factory Purchase$MutationRoot$PurchaseMutationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$Purchase$MutationRoot$PurchaseMutationResponseFromJson(json);

  late bool success;

  String? errorMessage;

  @override
  List<Object?> get props => [success, errorMessage];
  @override
  Map<String, dynamic> toJson() =>
      _$Purchase$MutationRoot$PurchaseMutationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Purchase$MutationRoot extends JsonSerializable with EquatableMixin {
  Purchase$MutationRoot();

  factory Purchase$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$Purchase$MutationRootFromJson(json);

  Purchase$MutationRoot$PurchaseMutationResponse? purchase;

  @override
  List<Object?> get props => [purchase];
  @override
  Map<String, dynamic> toJson() => _$Purchase$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Viewer$QueryRoot$Customer$Offer$Product extends JsonSerializable
    with EquatableMixin {
  Viewer$QueryRoot$Customer$Offer$Product();

  factory Viewer$QueryRoot$Customer$Offer$Product.fromJson(
          Map<String, dynamic> json) =>
      _$Viewer$QueryRoot$Customer$Offer$ProductFromJson(json);

  late String id;

  late String name;

  late String description;

  late String image;

  @override
  List<Object?> get props => [id, name, description, image];
  @override
  Map<String, dynamic> toJson() =>
      _$Viewer$QueryRoot$Customer$Offer$ProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Viewer$QueryRoot$Customer$Offer extends JsonSerializable
    with EquatableMixin {
  Viewer$QueryRoot$Customer$Offer();

  factory Viewer$QueryRoot$Customer$Offer.fromJson(Map<String, dynamic> json) =>
      _$Viewer$QueryRoot$Customer$OfferFromJson(json);

  late String id;

  late int price;

  late Viewer$QueryRoot$Customer$Offer$Product product;

  @override
  List<Object?> get props => [id, price, product];
  @override
  Map<String, dynamic> toJson() =>
      _$Viewer$QueryRoot$Customer$OfferToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Viewer$QueryRoot$Customer extends JsonSerializable with EquatableMixin {
  Viewer$QueryRoot$Customer();

  factory Viewer$QueryRoot$Customer.fromJson(Map<String, dynamic> json) =>
      _$Viewer$QueryRoot$CustomerFromJson(json);

  late String id;

  late String name;

  late int balance;

  late List<Viewer$QueryRoot$Customer$Offer?> offers;

  @override
  List<Object?> get props => [id, name, balance, offers];
  @override
  Map<String, dynamic> toJson() => _$Viewer$QueryRoot$CustomerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Viewer$QueryRoot extends JsonSerializable with EquatableMixin {
  Viewer$QueryRoot();

  factory Viewer$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$Viewer$QueryRootFromJson(json);

  Viewer$QueryRoot$Customer? viewer;

  @override
  List<Object?> get props => [viewer];
  @override
  Map<String, dynamic> toJson() => _$Viewer$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PurchaseArguments extends JsonSerializable with EquatableMixin {
  PurchaseArguments({required this.offerId});

  @override
  factory PurchaseArguments.fromJson(Map<String, dynamic> json) =>
      _$PurchaseArgumentsFromJson(json);

  late String offerId;

  @override
  List<Object?> get props => [offerId];
  @override
  Map<String, dynamic> toJson() => _$PurchaseArgumentsToJson(this);
}

final PURCHASE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'Purchase'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'offerId')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'purchase'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'offerId'),
                  value: VariableNode(name: NameNode(value: 'offerId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'success'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'errorMessage'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class PurchaseMutation
    extends GraphQLQuery<Purchase$MutationRoot, PurchaseArguments> {
  PurchaseMutation({required this.variables});

  @override
  final DocumentNode document = PURCHASE_MUTATION_DOCUMENT;

  @override
  final String operationName = 'Purchase';

  @override
  final PurchaseArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Purchase$MutationRoot parse(Map<String, dynamic> json) =>
      Purchase$MutationRoot.fromJson(json);
}

final VIEWER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Viewer'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'viewer'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'balance'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'offer'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'price'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'product'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'description'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'image'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class ViewerQuery extends GraphQLQuery<Viewer$QueryRoot, JsonSerializable> {
  ViewerQuery();

  @override
  final DocumentNode document = VIEWER_QUERY_DOCUMENT;

  @override
  final String operationName = 'Viewer';

  @override
  List<Object?> get props => [document, operationName];
  @override
  Viewer$QueryRoot parse(Map<String, dynamic> json) =>
      Viewer$QueryRoot.fromJson(json);
}
