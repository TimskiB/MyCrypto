import 'api_manager.dart';

Future<dynamic> bitcoinPriceCall({
  String slug = 'bitcoin',
  String id = '1',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'Bitcoin Price',
      apiDomain: 'pro-api.coinmarketcap.com',
      apiEndpoint: 'v1/cryptocurrency/quotes/latest',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'slug': slug,
        'id': id,
      },
      returnResponse: true,
    );
