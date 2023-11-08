import 'package:flutter/material.dart';
import 'package:projeto_inicial/utils/breakpoints.dart';
import 'package:projeto_inicial/widgets/appbar_widget.dart';
import 'package:projeto_inicial/widgets/sections/certificados_projetos_widget.dart';
import 'package:projeto_inicial/widgets/sections/container_quemsou.dart';
import 'package:projeto_inicial/widgets/sections/container_intro.dart';
import 'package:projeto_inicial/widgets/drawer_mobile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();

  void _onPressedInicio() {
    const screenHeight = 0.0;
    _controller.animateTo(screenHeight,
        curve: Curves.easeOut, duration: const Duration(seconds: 1));
  }

  void _onPressQuem() {
    final screenHeightQuem = MediaQuery.of(context).size.height;
    _controller.animateTo(screenHeightQuem,
        curve: Curves.easeOut, duration: const Duration(seconds: 1));
  }

  void _onPressCerts() {
    final screenHeightCerts = MediaQuery.of(context).size.height * 2;
    _controller.animateTo(screenHeightCerts,
        curve: Curves.easeOut, duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 0, 33),
      appBar: MinhaAppBar(
        onPressInicio: _onPressedInicio,
        onPressQuem: _onPressQuem,
        onPressCerts: _onPressCerts,
      ),
      drawer: larguraTela <= breakpointLarguraMobile?
      DrawerMobile(
        onPressInicio: _onPressedInicio,
        onPressQuem: _onPressQuem,
        onPressCerts: _onPressCerts,
      )
      :const SizedBox.shrink(),
      body: ListView(
        controller: _controller,
        children: const [
          Column(
            children: [
              ContainerIntro(),
              ContainerQuemSou(),
              CertificadosProjetos()
            ],
          ),
        ],
      ),
    );
  }
}
