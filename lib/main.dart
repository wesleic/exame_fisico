import 'package:flutter/material.dart';
import 'package:exm_fisico/pages/home.page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo para Exame Físico',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
