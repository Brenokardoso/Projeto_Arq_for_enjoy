// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_arquitetura_tocantins/AppBar/appBar.dart';
import 'package:projeto_arquitetura_tocantins/carroussel/carroussel_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: MyAppBar(),
        ),
        body: ListView(
          children: [
            MyCarroussel(),
          ],
        )
        // color: Colors.blueGrey,
        );
  }
}
