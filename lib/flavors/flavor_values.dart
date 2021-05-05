import 'package:flutter/material.dart';
import 'package:radio_life/app/utils/string_utils.dart';

// ignore: constant_identifier_names
enum Flavor { DEV, PRODUCTION }

class FlavorValues {
  FlavorValues(
      {required this.baseUrl,
      required this.baseWebSocketUrl,
      required this.imageUrl});
  final String baseUrl;
  final String baseWebSocketUrl;
  final String imageUrl;
}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final Color color;
  final FlavorValues values;

  static late FlavorConfig _instance;

  FlavorConfig._internal({
    required this.flavor,
    required this.name,
    required this.color,
    required this.values,
  });

  // ignore: sort_unnamed_constructors_first
  factory FlavorConfig({
    required Flavor flavor,
    required FlavorValues values,
    Color color = Colors.blue,
  }) =>
      _instance = FlavorConfig._internal(
        flavor: flavor,
        name: StringUtils.enumName(flavor.toString()),
        color: color,
        values: values,
      );

  static FlavorConfig get instance => _instance;

  static bool isProduction() => _instance.flavor == Flavor.PRODUCTION;
  static bool isDevelopment() => _instance.flavor == Flavor.DEV;
}
