import 'package:flutter/material.dart';
import 'package:music_player/color_palette.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
            'profile page',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
