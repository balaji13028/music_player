import 'package:flutter/material.dart';
import 'package:music_player/color_palette.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.screenBackColor,
      body: Container(
        decoration: const BoxDecoration(
          gradient: ColorPalette.backgroundGradient,
        ),
        child: const Center(
          child: Text(
            'Music page',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
