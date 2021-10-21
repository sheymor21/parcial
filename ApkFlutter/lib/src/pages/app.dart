import 'package:flutter/material.dart';
import 'package:proyectocurso2/src/pages/home_page.dart';
import 'package:proyectocurso2/src/routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: getRoutes(),
        onGenerateRoute: ((settings) {
          return MaterialPageRoute(
            builder: (context) => HomePage(),
          );
        }));
  }
}
