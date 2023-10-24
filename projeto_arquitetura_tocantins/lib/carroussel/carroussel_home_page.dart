// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unused_element, prefer_final_fields, unused_field, sized_box_for_whitespace

import 'dart:async';

import 'package:flutter/material.dart';

class MyCarroussel extends StatefulWidget {
  const MyCarroussel({super.key});

  @override
  State<MyCarroussel> createState() => _MyCarrousselState();
}

class _MyCarrousselState extends State<MyCarroussel> {
  double currentPage = 0;
  PageController _controlladorDaPage =
      PageController(initialPage: 2, viewportFraction: 1);
  late Timer tempo;

  List<String> imagens = [
    "lib/assets/img/carroussel/PaisagemPlanice.png",
    "lib/assets/img/carroussel/PonteNiteroi.png",
    "lib/assets/img/carroussel/PorDoSol.png",
  ];

  @override
  void dispose() {
    _controlladorDaPage.dispose();
    tempo.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    tempo = Timer.periodic(
      Duration(seconds: 2),
      (Timer tempo) {
        if (currentPage > imagens.length - 1) {
          currentPage++;
        } else {
          currentPage = 1;
        }
        _controlladorDaPage.animateTo(
          currentPage,
          duration: Duration(seconds: 1), // Aumente a duração para 1 segundo
          curve: Curves.easeOut,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: 1449,
      child: PageView.builder(
        controller: _controlladorDaPage,
        itemCount: imagens.length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _controlladorDaPage,
            builder: (context, child) {
              double value = 1.0;
              if (_controlladorDaPage.position.haveDimensions) {
                value = _controlladorDaPage.page! - index;
                value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
              }
              return Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: child,
                  ),
                ),
              );
            },
            child: Image.asset(imagens[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
