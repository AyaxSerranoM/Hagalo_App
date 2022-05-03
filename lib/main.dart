import 'package:flutter/material.dart';

void main() {
  runApp(HagaloApp());
} //Funcion principal

class HagaloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Hagalo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Paginainicial());
  } //Widgets
} //Clase HagaloApp widgets sin estado

class Paginainicial extends StatefulWidget {
  Paginainicial({Key? key}) : super(key: key);
  @override
  _PaginainicialState createState() => _PaginainicialState();
} //widegts con estado

class _PaginainicialState extends State<Paginainicial> {
  List<String> images = [
    "assets/images/herramienta6.jpg",
    "assets/images/herramienta3.jpg",
    "assets/images/herramienta4.jpg",
    "assets/images/herramienta6.jpg",
    "assets/images/herramienta3.jpg",
    "assets/images/herramienta4.jpg",
    "assets/images/herramienta6.jpg",
    "assets/images/herramienta3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tutorial Gridview"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 8,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
