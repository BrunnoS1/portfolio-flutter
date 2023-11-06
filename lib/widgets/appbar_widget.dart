import 'package:flutter/material.dart';
import 'package:projeto_inicial/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class MinhaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onPressInicio;
  final VoidCallback onPressQuem;
  final VoidCallback onPressCerts;

  MinhaAppBar({
    super.key,
    required this.onPressInicio,
    required this.onPressQuem,
    required this.onPressCerts,
  });

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 24, 0, 33),
      foregroundColor: Colors.white,
      title: Text(
        larguraTela <= breakpointLarguraMobile ? "" : "Bem-vindo",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 0.75,
        ),
      ),
      actions: [
        Container(
          constraints: BoxConstraints(
              maxWidth: larguraTela > breakpointLarguraMobile
                  ? larguraTela / 1.5
                  : larguraTela),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: onPressInicio,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child: const Text("Início", style: TextStyle(fontSize: 20)),
              ),
              TextButton(
                onPressed: onPressQuem,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  "Quem sou eu",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: onPressCerts,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child:
                    const Text("Certificados", style: TextStyle(fontSize: 20)),
              ),
              IconButton(
                  onPressed: () {
                    _launchUrl();
                  },
                  icon: Image.asset('assets/images/git_icon.png'),
                  tooltip: 'Github')
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Uri urlGit = Uri.parse('https://github.com/BrunnoS1');

  Future<void> _launchUrl() async {
    if (!await launchUrl(urlGit)) {
      throw Exception('Could not launch $urlGit');
    }
  }

  // void _launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url, forceWebView: false, enableJavaScript: true);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}
