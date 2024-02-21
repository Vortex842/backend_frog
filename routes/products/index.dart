import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  return Response.json(
    headers: {
      HttpHeaders.contentTypeHeader: 'text/html',
    },
    body: '<h1>Mis Productos</h1>',
  );
}
