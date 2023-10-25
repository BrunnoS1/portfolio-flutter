import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_inicial/widgets/appbar_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:projeto_inicial/widgets/imgcarrosel_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indiceItemCarrossel = 0; // Pegar indice do item do carrossel

  final itens = [
    // lista com itens do carrossel
    "Java",
    "SQL",
    "Python",
    "Flutter",
    "HTML",
    "JavaScript",
    "AWS",
  ];

  final descricao = [
    // descriçao Java
    "Java foi minha primeira linguagem orientada a objetos, que aprendi durante o 1º semestre do curso no IMT. Além das aulas na universidade, fiz o curso da Oracle Academy Java Foundations sobre os fundamentos de Java. Meu primeiro projeto grande do curso do IMT foi feito em Java",

    // descriçao SQL
    "Aprendi SQL utilizando o MySQL durante as aulas do 1º semestre no IMT. No projeto do 1º semestre, eu e meu grupo utilizamos SQL para criar um banco de dados para o projeto",

    // descriçao Python
    "Python foi a linguagem que me despertou o interesse pela Ciência da Computação. Comecei a aprender por conta própria durante a pandemia. No 2º semestre do curso do IMT, estudei o uso do Python para estatística com bibliotecas como pandas, scipy, entre outras",

    // descriçao Flutter
    "Conheci Flutter e aprendi os fundamentos por meio de uma aula especial opcional no IMT, durante o 2º semestre. Este portfólio foi feito com Flutter",

    // descrição HTML
    "Estudei HTML e CSS durante o segundo semestre no IMT, assim como alguns frameworks como Bootstrap. O projeto do 2º semestre do curso, no qual foi feito uma parte de um site para a APAE-SCS, foi desenvolvido com HTML",

    // descriçao JS
    "Estudei JavaScript durante o 2º semestre de 2023, com intuito de usá-lo no back-end do Projeto Integrador do semestre",

    // descriçao AWS
    "Fiz o curso AWS Cloud Pratictioner durante o 1º semestre de 2023, que me trouxe os conhecimentos básicos gerais sobre a nuvem AWS e seus componentes, com apoio de uma disciplina especial opcional.",
  ];

  @override
  Widget build(BuildContext context) {
    final alturaTela = MediaQuery.of(context).size.height;
    final larguraTela = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 0, 33),
      appBar: MinhaAppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              // primeira parte (roxa)
              Container(
                // imagem fundo
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/images/foto_maua.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1),
                      BlendMode.dstATop,
                    ),
                  ),
                ),
                height: alturaTela,
                width: larguraTela,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200.0),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            // Wrap pra mudar de linha e a imagem nao sobrepor o texto
                            alignment: WrapAlignment.start,
                            spacing: 500,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "Olá, eu sou Brunno Souza",
                                      style: GoogleFonts.aBeeZee(
                                        textStyle: const TextStyle(
                                          color: Colors.yellow,
                                          letterSpacing: .5,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "bem-vindo ao meu portfólio",
                                      style: GoogleFonts.aBeeZee(
                                        textStyle: const TextStyle(
                                          color: Colors.white,
                                          letterSpacing: .5,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: larguraTela <= 1524 ? 50 : 0,
                                    right: 100.0),
                                child: Image.asset(
                                  "assets/images/imagem.jpg",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // segunda parte (branca)
              Container(
                color: Colors.white,
                width: larguraTela,
                height: alturaTela,
                child: Column(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100, left: 50),
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
                    padding: const EdgeInsets.only(top: 100, right: 50.0),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                            "Eu sou um estudante de Ciência da Computação no Instituto Mauá de Tecnologia, como previsão de conclusão\n"
                            "em dezembro de 2026 com conhecimentos nas seguintes áreas",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              color: Colors.black,
                              letterSpacing: .1,
                              fontSize: 25,
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: CarouselSlider(
                      items: const [
                        ImgCarrossel(imgPath: "assets/images/java-logo.png"),
                        ImgCarrossel(imgPath: "assets/images/sql-logo.png"),
                        ImgCarrossel(imgPath: "assets/images/python-logo.png"),
                        ImgCarrossel(imgPath: "assets/images/flutter-logo.png"),
                        ImgCarrossel(imgPath: "assets/images/html-logo.png"),
                        ImgCarrossel(imgPath: "assets/images/js-logo.png"),
                        ImgCarrossel(imgPath: "assets/images/aws-logo.png"),
                      ],
                      options: CarouselOptions(
                          height: 150,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 7),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          enableInfiniteScroll: true,
                          viewportFraction: 0.2,
                          onPageChanged: (index, reason) {
                            _mudarItemCarrossel(index);
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Text(itens[indiceItemCarrossel],
                        style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .1,
                          fontSize: 40,
                        ))),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: larguraTela / 10),
                    child: Text(descricao[indiceItemCarrossel],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                            textStyle: const TextStyle(
                          color: Colors.black,
                          letterSpacing: .5,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ))),
                  )
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _mudarItemCarrossel(int index) {
    setState(() {
      indiceItemCarrossel = index;
    });
  }
}
