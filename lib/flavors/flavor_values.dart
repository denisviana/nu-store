import 'package:flutter/material.dart';
import 'package:my_app/app/utils/string_utils.dart';

// ignore: constant_identifier_names
enum Flavor { DEV, PROD }

class FlavorValues {
  FlavorValues({
    required this.baseUrl,
    required this.token,
  });

  final String baseUrl;
  final String token;
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

  static bool isProduction() => _instance.flavor == Flavor.PROD;

  static bool isDevelopment() => _instance.flavor == Flavor.DEV;
}
