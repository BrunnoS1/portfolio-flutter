import 'package:flutter/material.dart';

class ImgCarrossel extends StatelessWidget {
  final String imgPath;
  const ImgCarrossel({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.scaleDown,
          )),
    );
  }
}
