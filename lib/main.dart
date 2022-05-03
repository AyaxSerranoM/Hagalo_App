import 'package:flutter/material.dart';
import 'package:serrano/GaleriaArticulos.dart';

void main() {
  runApp(HagaloApp());
} //Funcion principal

class HagaloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Hagalo v2',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Paginainicial());
  } //Widgets
} //Clase HagaloApp widgets sin estado
