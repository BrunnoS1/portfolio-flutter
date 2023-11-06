// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:projeto_inicial/widgets/appbar_widget.dart';
import 'package:projeto_inicial/widgets/container_quemsou.dart';
import 'package:projeto_inicial/widgets/container_intro.dart';

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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 0, 33),
      appBar: MinhaAppBar(
        onPressInicio: _onPressedInicio,
        onPressQuem: _onPressQuem,
        onPressCerts: _onPressCerts,
      ),
      body: ListView(
        controller: _controller,
        children: const [
          Column(
            children: [
              // primeira parte (roxa)
              ContainerIntro(),
              // segunda parte (branca)
              ContainerQuemSou(),
              // terceira parte
              ContainerIntro(),
            ],
          )
        ],
      ),
    );
  }
}
