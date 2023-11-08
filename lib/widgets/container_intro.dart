import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_inicial/utils/utils.dart';

class ContainerIntro extends StatelessWidget {
  const ContainerIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final alturaTela = MediaQuery.of(context).size.height;
    final larguraTela = MediaQuery.of(context).size.width;
    return Container(
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
                          top: larguraTela <= breakpointLarguraTablet ? 50 : 0,
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
    );
  }
}
