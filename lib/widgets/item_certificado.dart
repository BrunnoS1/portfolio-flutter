import 'package:flutter/material.dart';

class ItemCertificado extends StatelessWidget {
  final String imgpath;
  final String texto;
  const ItemCertificado(
      {super.key, required this.imgpath, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgpath,
          height: 150,
          width: 150,
          fit: BoxFit.scaleDown,
        ),
        Text(
          texto,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
