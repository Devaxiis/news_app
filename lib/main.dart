import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/app.dart';
import 'package:news_app/src/core/service_locator.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt locator = setupLocator();
  repository.getLocation();

  runApp(MyApp(locator: locator));
}
