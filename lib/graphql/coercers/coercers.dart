String fromDartdoubleToGraphQLGraphQlBigNumber(double? number) =>
    number != null ? number.toString() : '';

double fromGraphQLGraphQlBigNumberToDartdouble(String? numberString) =>
    double.tryParse(numberString ?? '') ?? 0;

String fromDartintToGraphQLUnixTimeSeconds(int number) => number.toString();
int fromGraphQLUnixTimeSecondsToDartint(String numberString) => int.parse(numberString);
