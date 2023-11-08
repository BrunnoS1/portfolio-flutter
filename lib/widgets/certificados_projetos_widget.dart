import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_inicial/utils/lista_certificados.dart';
import 'package:projeto_inicial/utils/lista_projetos.dart';
import 'package:projeto_inicial/utils/utils.dart';
import 'package:projeto_inicial/widgets/item_certificado.dart';
import 'package:projeto_inicial/widgets/item_projeto.dart';

class CertificadosProjetos extends StatelessWidget {
  const CertificadosProjetos({super.key});

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    return SizedBox(
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
          LayoutBuilder(
            builder: (_, constraints) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: constraints.maxWidth >= breakpointLarguraMobile
                        ? 0
                        : 16),
                shrinkWrap: true,
                itemCount: listaCertificados.length,
                itemBuilder: (context, index) {
                  return ItemCertificado(
                    imgpath: listaCertificados[index].imgpath,
                    texto: listaCertificados[index].texto,
                  );
                },
              );
            },
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
          LayoutBuilder(
            builder: (_, constraints) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: constraints.maxWidth >= breakpointLarguraMobile
                        ? 0
                        : 16),
                shrinkWrap: true,
                itemCount: listaProjetos.length,
                itemBuilder: (context, index) {
                  return ItemProjeto(
                    imgpath: listaProjetos[index].imgpath,
                    texto: listaProjetos[index].texto,
                    url: listaProjetos[index].url,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
