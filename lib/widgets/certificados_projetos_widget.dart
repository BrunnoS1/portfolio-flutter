import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_inicial/widgets/item_certificado.dart';
import 'package:projeto_inicial/widgets/item_projeto.dart';

class CertificadosProjetos extends StatelessWidget {
  const CertificadosProjetos({super.key});

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    return Container(
      width: larguraTela,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 50),
              child: Text(
                "Certificados",
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    letterSpacing: .1,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Wrap(
              spacing: 40,
              alignment: WrapAlignment.center,
              children: [
                ItemCertificado(
                  imgpath: "assets/images/certificados/awsacad.png",
                  texto: "AWS Cloud Practitioner",
                ),
                ItemCertificado(
                  imgpath: "assets/images/certificados/cisco.png",
                  texto: "Cyber Security Essentials",
                ),
                ItemCertificado(
                  imgpath: "assets/images/certificados/dataibm.png",
                  texto: "Getting Started with Enterprise Data Science",
                ),
                ItemCertificado(
                  imgpath: "assets/images/certificados/oracle.png",
                  texto: "Java Foundations",
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 50),
              child: Text(
                "Projetos",
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    letterSpacing: .1,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Wrap(
              spacing: 40,
              alignment: WrapAlignment.center,
              children: [
                ItemProjeto(
                    imgpath: "assets/images/projetos/code_quest.png",
                    texto: "Code Quest\nLinguagem: Java, SQL - mySQL",
                    url: "https://github.com/BrunnoS1/Code-Quest"),
                ItemProjeto(
                    imgpath: "assets/images/flutter-logo.png",
                    texto:
                        "Portfólio feito em flutter\nLinguagem: Dart - Flutter",
                    url: "https://github.com/BrunnoS1/portfolio-flutter"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
