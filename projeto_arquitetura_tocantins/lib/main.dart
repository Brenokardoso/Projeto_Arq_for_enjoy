// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:projeto_arquitetura_tocantins/Pages/HomePage/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tocantins Arquitetônico",
      debugShowCheckedModeBanner: false,
      theme: null,
      routes: {
        "/": (context) => HomePage(),
      },
      initialRoute: "/",
    );
  }
}
