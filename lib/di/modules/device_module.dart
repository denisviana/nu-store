
import 'dart:io';
import 'package:injectable/injectable.dart';

@module
abstract class DeviceModule {

  @Named('language')
  String get language => Platform.localeName;

}