import 'package:flutter/material.dart';
import 'package:projeto_inicial/utils/lista_certificados.dart';
import 'package:projeto_inicial/utils/utils.dart';
import 'package:projeto_inicial/widgets/item_certificado.dart';

class CertificadosProjetos extends StatelessWidget {
  const CertificadosProjetos({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal:
                  constraints.maxWidth >= breakpointLarguraMobile ? 0 : 16),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, index) {
            return ItemCertificado(
                imgpath: listaCertificados[index].imgpath,
                texto: listaCertificados[index].texto);
          },
        );
      },
    );
  }
}
