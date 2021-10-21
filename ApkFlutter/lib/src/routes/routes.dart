import 'package:flutter/material.dart';
import 'package:proyectocurso2/src/pages/Multiplicacion_page.dart';
import 'package:proyectocurso2/src/pages/avatar_page.dart';
import 'package:proyectocurso2/src/pages/home_page.dart';
import 'package:proyectocurso2/src/pages/inputs_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'Inputs': (BuildContext context) => InputsPage(),
    'Multipli': (BuildContext context) => MultipliPage()
  };
}
