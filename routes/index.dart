import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  return Response(
    headers: {
      HttpHeaders.contentTypeHeader: 'text/html; charset=UTF-8',
    },
    body: '<h1>Wellcome to Vortex server</h1>',
  );
}
