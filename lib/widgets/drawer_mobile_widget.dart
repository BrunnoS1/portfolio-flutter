import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerMobile extends StatefulWidget {
  final VoidCallback onPressInicio;
  final VoidCallback onPressQuem;
  final VoidCallback onPressCerts;

  const DrawerMobile({
    super.key,
    required this.onPressInicio,
    required this.onPressQuem,
    required this.onPressCerts,
  });

  @override
  State<DrawerMobile> createState() => _DrawerMobileState();
}

class _DrawerMobileState extends State<DrawerMobile> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 24, 0, 33),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          DrawerHeader(
            child: Container(
              height: 100,
              width: double.infinity,
              color: const Color.fromARGB(255, 24, 0, 33),
              child: const Center(
                child: Text(
                  "Navegação",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: widget.onPressInicio,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    backgroundColor: Colors.white,
                  ),
                  child: const Text(
                    "Início",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 24, 0, 33)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: widget.onPressQuem,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    backgroundColor: Colors.white,
                  ),
                  child: const Text(
                    "Quem sou eu",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 24, 0, 33)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: widget.onPressCerts,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    backgroundColor: Colors.white,
                  ),
                  child: const Text(
                    "Certificados",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 24, 0, 33)),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: IconButton(
              onPressed: () {
                _launchUrl();
              },
              icon: Image.asset(
                'assets/images/github-logo.png',
                height: 50,
                width: 50,
              ),
              tooltip: 'Github',
            ),
          ),
        ],
      ),
    );
  }

  final Uri urlGit = Uri.parse('https://github.com/BrunnoS1');

  Future<void> _launchUrl() async {
    if (!await launchUrl(urlGit)) {
      throw Exception('Could not launch $urlGit');
    }
  }
}
