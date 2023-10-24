import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_inicial/widgets/appbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                                      "e este é o meu portfólio",
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
                  )
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
