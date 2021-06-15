import 'api_manager.dart';

Future<dynamic> bitcoinPriceCall() => ApiManager.instance.makeApiCall(
      callName: 'Bitcoin Price',
      apiDomain: 'api.coindesk.com',
      apiEndpoint: 'v1/bpi/currentprice/BTC.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );
