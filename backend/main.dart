import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:timezone/data/latest_10y.dart' as timezone;

Future<void> init(InternetAddress ip, int port) async {
  timezone.initializeTimeZones();
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  return serve(handler, ip, port);
}
