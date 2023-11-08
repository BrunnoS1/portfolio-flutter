import 'package:flutter/material.dart';

class ItemCertificado extends StatefulWidget {
  final String imgpath;
  final String texto;

  const ItemCertificado({
    super.key, 
    required this.imgpath,
    required this.texto,
  });

  @override
  _ItemCertificadoState createState() => _ItemCertificadoState();
}

class _ItemCertificadoState extends State<ItemCertificado> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: isHovered
          ? Center(
              child: Container(
                color: Colors.black.withOpacity(0.8),
                child: Transform.scale(
                  scale: 3.0,
                  child: Image.asset(
                    widget.imgpath,
                    height: 150,
                    width: 150,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  widget.imgpath,
                  height: 150,
                  width: 150,
                  fit: BoxFit.scaleDown,
                ),
                Flexible(
                  child: Text(
                    widget.texto,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
