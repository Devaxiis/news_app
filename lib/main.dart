import 'package:flutter/material.dart';
import 'package:news_app/app.dart';
import 'package:news_app/src/core/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();

  runApp(const MyApp());
}



