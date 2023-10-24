import 'package:flutter/material.dart';

class MinhaAppBar extends AppBar {
  MinhaAppBar({super.key})
      : super(
          backgroundColor: const Color.fromARGB(255, 24, 0, 33),
          foregroundColor: Colors.white,
          title: const Text(
            "Bem-vindo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 0.75,
            ),
          ),
        );
}
