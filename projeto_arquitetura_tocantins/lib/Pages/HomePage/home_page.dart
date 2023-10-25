// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_arquitetura_tocantins/Pages/AppBar/appBar.dart';
import 'package:projeto_arquitetura_tocantins/Pages/Card/card_home_page.dart';
import 'package:projeto_arquitetura_tocantins/Pages/Card/card_home_page_fotter.dart';
import 'package:projeto_arquitetura_tocantins/Pages/Carroussel/carroussel_home_page.dart';
import 'package:projeto_arquitetura_tocantins/Pages/Footter/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  ImageProvider card1 = AssetImage("lib/assets/img/cards/Catedral.png");
  ImageProvider card2 = AssetImage("lib/assets/img/cards/Igreja.png");
  ImageProvider card3 = AssetImage("lib/assets/img/cards/OldHouse.png");
  ImageProvider card4 = AssetImage("lib/assets/img/cards/Museu.png");

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: MyAppBar(),
        ),
        body: ListView(
          children: [
            SizedBox(height: 23),
            MyCarroussel(),
            Wrap(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 120),
                  height: 200,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "CONHEÇA OS PATROMÔNIOS CULTURAIS",
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.0225,
                            color: Color.fromRGBO(130, 104, 20, 0.8),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            MyCard(),
            SizedBox(height: 20),
            Wrap(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 120),
                  height: 200,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "QUEM SOMOS",
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.0225,
                            color: Color.fromRGBO(130, 104, 20, 0.8),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Wrap(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 120),
                  width: MediaQuery.of(context).size.width * 1,
                  height: 500,
                  color: Color.fromRGBO(213, 209, 197, 0.698),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          """\nO projeto Tocantins Arquitetônico surgiu da colaboração e sinergia entre os estudantes de Engenharia de Software e os estudantes de Arquitetura e Urbanismo, que uniram seus conhecimentos e paixão pela cultura e história do Estado para criar uma iniciativa única e valiosa. O principal objetivo desse projeto é disseminar informações sobre os ricos patrimônios culturais do Tocantins, proporcionando ao público uma oportunidade de conhecer e apreciar as diversas expressões arquitetônicas que fazem parte da identidade cultural da região.\n\nA iniciativa não apenas promove o turismo cultural na região, mas também contribui para o fortalecimento da identidade cultural local e o fomento da educação patrimonial. Com o Tocantins Arquitetônico, estudantes, pesquisadores, turistas e moradores locais terão a oportunidade de explorar e aprender mais sobre a riqueza arquitetônica do Estado, preservando-a para as gerações futuras.""",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Jost',
                              fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Wrap(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 120),
                  height: 200,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "NOSSO BLOG",
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.0225,
                            color: Color.fromRGBO(130, 104, 20, 0.8),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            MyCardFootter(),
            SizedBox(height: 10),
            MyFotter(),
          ],
        )
        // color: Colors.blueGrey,
        );
  }
}
