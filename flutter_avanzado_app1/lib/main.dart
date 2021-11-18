import 'package:flutter/material.dart';
import 'package:flutter_avanzado_app1/pages/08-custom-painter/header_page.dart';
import 'package:get/get.dart';

import 'pages/01-contador/contador_page.dart';
import 'pages/02-id/contadorid_page.dart';
import 'package:flutter_avanzado_app1/pages/03-ciclo_de_vida/splash_page.dart';
import 'package:flutter_avanzado_app1/pages/04-consumo_api/users_page.dart';
import 'package:flutter_avanzado_app1/pages/06-reactivos/reactive_page.dart';

import 'pages/07-sockets/socket_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: SplashPage(),
        home: UsersPage());
  }
}
