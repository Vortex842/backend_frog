import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  final request = context.request;

  // if (request.method != HttpMethod.post) {
  //   return Response(
  //     statusCode: HttpStatus.badRequest,
  //     body: 'Metodo http no aceptado, solo puede usar POST',
  //   );
  // }

  return Response(
    headers: {
      HttpHeaders.contentTypeHeader: 'text/html; charset=UTF-8',
    },
    body: '<h1>Wellcome to device section</h1>',
  );
}
