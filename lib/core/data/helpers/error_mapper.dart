import 'package:flutter/services.dart';

import '../model/app_exception.dart';

class ErrorMapper {
  static AppException from(dynamic e) => e is PlatformException
            ? AppException(exception: e, description: e.message)
            : e is NoSuchMethodError
                ? AppException(exception: e, description: '')
                : e is AppException
                    ? e
                    : e is NoSuchMethodError
                        ? AppException(
                            exception: null,
                            description: '',
                          )
                        : AppException(
                            exception: e,
                            description: e.toString(),
                          );

}
