import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_inicial/utils/listas_desc.dart';
import 'package:projeto_inicial/utils/breakpoints.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:projeto_inicial/widgets/imgcarrosel_widget.dart';

class ContainerQuemSou extends StatefulWidget {
  const ContainerQuemSou({super.key});

  @override
  _ContainerQuemSouState createState() => _ContainerQuemSouState();
}

class _ContainerQuemSouState extends State<ContainerQuemSou> {
  int indiceItemCarrossel = 0;

  @override
  Widget build(BuildContext context) {
    final alturaTela = MediaQuery.of(context).size.height;
    final larguraTela = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      width: larguraTela,
      height: alturaTela,
      child: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 50),
            child: Text(
              "Quem sou eu",
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: .1,
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: alturaTela < breakpointAlturaMobile ? 10 : 30),
          child: Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                    "Eu sou um estudante de Ciência da Computação no Instituto Mauá de Tecnologia, com previsão de conclusão em dezembro de 2026 com conhecimentos nas seguintes áreas",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      color: Colors.black,
                      letterSpacing: .1,
                      fontSize: alturaTela < 900 ? 18 : 25,
                    )),
              )),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: alturaTela <= breakpointAlturaMobile ? 10 : 30),
          child: CarouselSlider(
            items: const [
              ImgCarrossel(imgPath: "assets/images/java-logo.png"),
              ImgCarrossel(imgPath: "assets/images/sql-logo.png"),
              ImgCarrossel(imgPath: "assets/images/python-logo.png"),
              ImgCarrossel(imgPath: "assets/images/flutter-logo.png"),
              ImgCarrossel(imgPath: "assets/images/html-logo.png"),
              ImgCarrossel(imgPath: "assets/images/js-logo.png"),
              ImgCarrossel(imgPath: "assets/images/aws-logo.png"),
              ImgCarrossel(imgPath: "assets/images/cisco-logo.png"),
              ImgCarrossel(imgPath: "assets/images/git-logo.png"),
            ],
            options: CarouselOptions(
                height: alturaTela < breakpointAlturaMobile ? 100 : 150,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 7),
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                enableInfiniteScroll: true,
                viewportFraction: 0.2,
                onPageChanged: (index, reason) {
                  _mudarItemCarrossel(index);
                }),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: alturaTela < breakpointAlturaMobile ? 0 : 50),
          child: Text(itens[indiceItemCarrossel],
              style: GoogleFonts.openSans(
                  textStyle:  TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: .1,
                fontSize: larguraTela <= breakpointAlturaMobile? 20 :40,
              ))),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: larguraTela / 10),
          child: Text(descricao[indiceItemCarrossel],
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  textStyle:  TextStyle(
                color: Colors.black,
                letterSpacing: .5,
                fontWeight: FontWeight.bold,
                fontSize: larguraTela <= breakpointAlturaMobile? 15 :20,
              ))),
        )
      ]),
    );
  }

  void _mudarItemCarrossel(int index) {
    setState(() {
      indiceItemCarrossel = index;
    });
  }
}
