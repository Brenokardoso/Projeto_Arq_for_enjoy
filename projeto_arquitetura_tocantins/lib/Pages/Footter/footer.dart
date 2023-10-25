// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyFotter extends StatefulWidget {
  const MyFotter({super.key});

  @override
  State<MyFotter> createState() => _MyFotterState();
}

class _MyFotterState extends State<MyFotter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      color: Color.fromRGBO(125, 100, 18, 1),
      child: Row(
        children: [
          SizedBox(width: 10),
          Expanded(
            child: ListTile(
              leading:
                  Image.asset("lib/assets/img/logo/LogoAppBarArquitetura.png"),
              title: Text(
                "TOCANTINS\nARQUITETÔNICO",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              child: ListView(
                children: [ListTile()],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
