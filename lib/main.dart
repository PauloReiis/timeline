import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timeline/src/app/config/app.dart';
import 'package:timeline/src/app/config/routes.dart';

void main() {
  setConfiguration();
  runApp(App(initRoute: Routes.initRoute));
}

void setConfiguration() {
  //Habilita somente rotação Retrato
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
