import 'package:dio/dio.dart';

const APPLICATION_JSON = 'application/json';
const CONTENT_TYPE = 'content-type';
const ACCEPT = 'accept';
const AUTHORIZATION = 'Authorization';
const DEFAULT_LANGUAGE = 'language';

class DioManager {
  final Map<String, String> _mainheaders = {
    CONTENT_TYPE: APPLICATION_JSON,
    ACCEPT: '*/*',
    DEFAULT_LANGUAGE: 'en',
  };

  Dio dio = Dio(BaseOptions(
    baseUrl: "https://jsonplaceholder.typicode.com",
    sendTimeout: Duration(minutes: 1),
    connectTimeout: Duration(minutes: 1),
    receiveTimeout: Duration(minutes: 1),
  ));

  Future<Response> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    return await dio.get(url,
        queryParameters: queryParameters,
        options: Options(
          headers: _mainheaders,
        ));
  }

  static String tempToken1 = "";
}
