import 'dart:convert';
import 'dart:io';

import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockGoRouter extends Mock implements GoRouter {}

class MockHttpClient extends Mock implements HttpClient {}

class MockHttpHeaders extends Mock implements HttpHeaders {}

class MockHttpClientRequest extends Mock implements HttpClientRequest {}

class MockHttpClientResponse extends Mock implements HttpClientResponse {}

extension HttpMethodMocks on MockHttpClient {
  void mockGet(String path, Object object) {
    when(() => get(any(), any(), path)).thenAnswer((invocation) {
      final request = MockHttpClientRequest();
      final response = MockHttpClientResponse();
      when(() => request.close()).thenAnswer((_) => Future.value(response));
      when(() => request.headers).thenReturn(MockHttpHeaders());
      when(() => response.statusCode).thenReturn(200);
      when(() => response.transform(utf8.decoder))
          .thenAnswer((_) => Stream.value(jsonEncode(object)));
      return Future.value(request);
    });
  }

  void mockPost(String path, Object object, [int statusCode = 201]) {
    when(() => post(any(), any(), path)).thenAnswer((invocation) {
      final request = MockHttpClientRequest();
      final response = MockHttpClientResponse();
      when(() => request.close()).thenAnswer((_) => Future.value(response));
      when(() => request.headers).thenReturn(MockHttpHeaders());
      when(() => response.statusCode).thenReturn(statusCode);
      when(() => response.transform(utf8.decoder))
          .thenAnswer((_) => Stream.value(jsonEncode(object)));
      return Future.value(request);
    });
  }
}
