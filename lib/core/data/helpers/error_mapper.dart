import 'package:flutter/services.dart';

import 'package:my_app/generated/l10n.dart';
import '../model/app_exception.dart';

class ErrorMapper {
  static AppException from(dynamic e) => e is PlatformException
      ? AppException(exception: e, description: e.message)
      : e is NoSuchMethodError
          ? AppException(exception: e, description: S.current.somethingWentWrong)
          : e is AppException
              ? e
              : AppException(
                  exception: e,
                  description: e.toString(),
                );
}
