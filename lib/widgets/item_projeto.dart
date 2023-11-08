import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemProjeto extends StatelessWidget {
  final String imgpath;
  final String texto;
  final String url;
  const ItemProjeto(
      {super.key,
      required this.imgpath,
      required this.texto,
      required this.url});

  @override
  Widget build(BuildContext context) {
    final Uri parse_url = Uri.parse(url);
    Future<void> _launchUrl() async {
      if (!await launchUrl(parse_url)) {
        throw Exception('Could not launch $parse_url');
      }
    }

    return GestureDetector(
      onTap: () {
        _launchUrl();
      },
      child: Column(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Image.asset(
              imgpath,
              height: 150,
              width: 150,
              fit: BoxFit.fitHeight,
            ),
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
      ),
    );
  }
}
