import 'package:flutter/material.dart';

class ItemCertificado extends StatelessWidget {
  const ItemCertificado(
      {super.key, required this.imgpath, required this.texto});
  final String imgpath;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(imgpath, height: 150, width: 150, fit: BoxFit.scaleDown),
        // const SizedBox(height: 4),
        Flexible(
            child: Text(texto,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ))),
      ],
    );
  }
}
