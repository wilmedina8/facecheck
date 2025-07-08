import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetEmpleadoCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "${escapeStringForJson(uid)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getEmpleado',
      apiUrl: 'https://playgroundqulla.azurewebsites.net/api/getEmpleado',
      callType: ApiCallType.POST,
      headers: {
        'Cotent-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nombres(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nombres''',
      ));
  static String? dni(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dni''',
      ));
  static String? empresa(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.empresa''',
      ));
}

class ValidarRostroCall {
  static Future<ApiCallResponse> call({
    String? imageBase64 = '',
    String? uid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "image_base64": "${escapeStringForJson(imageBase64)}",
  "uid": "${escapeStringForJson(uid)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'validarRostro',
      apiUrl:
          'https://1q9n0g5s00.execute-api.us-east-2.amazonaws.com/dev/validar',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
