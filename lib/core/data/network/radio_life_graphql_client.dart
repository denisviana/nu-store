import 'package:graphql/client.dart';
import 'package:radio_life/core/data/helpers/secure_local_storage.dart';
import 'package:radio_life/core/data/helpers/storage_keys.dart';

class RadioLifeGraphQLClient {
  RadioLifeGraphQLClient._();

  static Future<GraphQLClient> init(HttpLink httpLink,
      WebSocketLink webSocketLink, SecureLocalStorage secureStorage) async {
    final authLink = AuthLink(
        getToken: () async =>
        '${await secureStorage.getData(key: '${StorageKeys.token}')}');

    var link = authLink.concat(httpLink);
    link = Link.split((request) => request.isSubscription, webSocketLink, link);
    return GraphQLClient(
        link: link,
        cache: GraphQLCache(store: InMemoryStore()),
        defaultPolicies: DefaultPolicies(
            query: Policies(fetch: FetchPolicy.networkOnly),
            mutate: Policies(fetch: FetchPolicy.networkOnly),
            subscribe: Policies(fetch: FetchPolicy.networkOnly)));
  }
}