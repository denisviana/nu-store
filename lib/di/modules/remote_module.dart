import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/core/data/network/app_graphql.dart';
import 'package:my_app/flavors/flavor_values.dart';

// Use this module to inject your third-party dependencies like [FirebaseAuth]
// E.g. FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

@module
abstract class RemoteModule {
  HttpLink get provideHttpLink => HttpLink(
        FlavorConfig.instance.values.baseUrl,
      );

  GraphQLClient provideGraphQLClient(HttpLink httpLink) =>
      AppGraphQLClient.init(httpLink);
}
