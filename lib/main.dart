import 'package:flutter/material.dart';
import 'package:myapp/formularios/form_producto.dart';
import 'package:myapp/formularios/form_categorias.dart';
import 'package:myapp/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      routes: {
        "/home": (context) => Homepage(),
        "/productos": (context) => Productos(),
        "/categorias": (context) => Categorias(),
      },
    );
  }
}
