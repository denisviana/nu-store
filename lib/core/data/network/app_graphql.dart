import 'package:graphql/client.dart';
import 'package:my_app/flavors/flavor_values.dart';

class AppGraphQLClient {
  AppGraphQLClient._();

  static GraphQLClient init(
    HttpLink httpLink,
  ) {
    final authLink = AuthLink(
        getToken: () async => 'Bearer ${FlavorConfig.instance.values.token}');

    final link = authLink.concat(httpLink);

    return GraphQLClient(
      link: link,
      cache: GraphQLCache(store: InMemoryStore()),
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.networkOnly),
        mutate: Policies(fetch: FetchPolicy.networkOnly),
        subscribe: Policies(fetch: FetchPolicy.networkOnly),
      ),
    );
  }
}
