import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Strapi Group Code

class StrapiGroup {
  static String baseUrl = 'https://agrovida.guayoyoltda.com/api';
  static Map<String, String> headers = {};
  static TodosLosBoletinesUniversitariosCall
      todosLosBoletinesUniversitariosCall =
      TodosLosBoletinesUniversitariosCall();
  static TodosLosBoletinesUniversitarioConFiltroCall
      todosLosBoletinesUniversitarioConFiltroCall =
      TodosLosBoletinesUniversitarioConFiltroCall();
  static TodosLosBannersCall todosLosBannersCall = TodosLosBannersCall();
  static GetToolsCall getToolsCall = GetToolsCall();
  static GetToolByIdCall getToolByIdCall = GetToolByIdCall();
  static GetArticlesCall getArticlesCall = GetArticlesCall();
}

class TodosLosBoletinesUniversitariosCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Todos los Boletines Universitarios',
      apiUrl: '${StrapiGroup.baseUrl}/boletin-universitarios',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'populate': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? global(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic year(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes.Year''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes.Name''',
      );
  dynamic situation(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes.Situation''',
      );
  dynamic upload(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes.File.data.attributes.url''',
      );
}

class TodosLosBoletinesUniversitarioConFiltroCall {
  Future<ApiCallResponse> call({
    String? situation = 'last',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Todos los Boletines Universitario con filtro',
      apiUrl: '${StrapiGroup.baseUrl}//boletin-universitarios',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'populate': "*",
        'filters[Situation][\$eq]': situation,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? global(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class TodosLosBannersCall {
  Future<ApiCallResponse> call({
    String? position = 'block-1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Todos los Banners',
      apiUrl: '${StrapiGroup.baseUrl}/banners',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'populate': "*",
        'filters[Position][\$eq]': position,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? global(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List? url(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes.Url''',
        true,
      ) as List?;
  List? upload(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes.Image.data.attributes.url''',
        true,
      ) as List?;
}

class GetToolsCall {
  Future<ApiCallResponse> call({
    String? position = 'top',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get Tools',
      apiUrl: '${StrapiGroup.baseUrl}/tools',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'filters[Position][\$eq]': position,
        'sort': "Order",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetToolByIdCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getToolById',
      apiUrl: '${StrapiGroup.baseUrl}/tools/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetArticlesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Articles',
      apiUrl: '${StrapiGroup.baseUrl}/articles',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'populate': "*",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic global(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

/// End Strapi Group Code

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
