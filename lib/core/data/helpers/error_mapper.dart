import 'package:flutter/services.dart';
import 'package:graphql/client.dart';
import 'package:my_app/generated/l10n.dart';

import '../model/app_exception.dart';

class ErrorMapper {
  static AppException from(dynamic e) => e is PlatformException
      ? AppException(exception: e, description: e.message)
      : e is NoSuchMethodError
          ? AppException(
              exception: e, description: S.current.somethingWentWrong)
          : e is AppException
              ? e
              : e is OperationException
                  ? AppException(
                      exception: e,
                      title: S.current.error,
                      description: e.linkException == null
                          ? _graphQlErrorMapperDescriptionFrom(e.graphqlErrors)
                          : _graphQlErrorMapperDescriptionFromLinkException(
                              e.linkException),
                    )
                  : AppException(
                      exception: e,
                      description: e.toString(),
                    );

  static String _graphQlErrorMapperDescriptionFromLinkException(
      LinkException? linkException) {
    if (linkException == null) return S.current.somethingWentWrong;

    if (linkException is HttpLinkServerException) {
      final errorList = linkException.parsedResponse?.errors ?? [];
      if (errorList.isEmpty) return S.current.somethingWentWrong;
      if (errorList.length == 1) {
        return errorList.first.message;
      } else
        return S.current.somethingWentWrong;
    }
    return S.current.somethingWentWrong;
  }

  static String _graphQlErrorMapperDescriptionFrom(
      List<GraphQLError> errorList) {
    if (errorList.isEmpty) return S.current.somethingWentWrong;
    if (errorList.length == 1) {
      return errorList.first.message;
    } else
      return S.current.somethingWentWrong;
  }
}
