import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:supabase/supabase.dart';

final supabase = SupabaseClient(
  'https://mjsddegvhgttoqgxgpzd.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1qc2RkZWd2aGd0dG9xZ3hncHpkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDgwNDg2MjIsImV4cCI6MjAyMzYyNDYyMn0.1rg49gGogJGNb6X5iOSN8SuYo5rYxPubgqNstgybLbI',
);

Future<Response> onRequest(RequestContext context) async {
  final supabaseJSON = await supabase.from('main_products').select();

  return Response.json(
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
    },
    body: supabaseJSON,
  );
}
