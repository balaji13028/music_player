import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/color_palette.dart';
import 'package:music_player/homepage.dart';
import 'package:music_player/musicpage.dart';
import 'package:music_player/controller/pagecontroller.dart';
import 'package:music_player/profilepage.dart';
import 'package:music_player/search_page.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final LandingPageController landingPageController =
        Get.put(LandingPageController());
    return Scaffold(
      backgroundColor: ColorPalette.screenBackColor,
      bottomNavigationBar: bottomnavibar(size, landingPageController),
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: const [
              HomePage(),
              SearchPage(),
              MusicPage(),
              ProfilePage(),
            ],
          )),
    );
  }

  Obx bottomnavibar(Size size, LandingPageController landingPageController) {
    return Obx(
      () => SafeArea(
        bottom: true,
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: size.height * 0.09,
          width: size.width,
          margin: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
          decoration: BoxDecoration(
            color: ColorPalette.buttonsBackgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: ColorPalette.buttonsBackgroundColor,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: ColorPalette.subtitleColor,
                  size: 28,
                ),
                activeIcon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 28,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.search,
                  color: ColorPalette.subtitleColor,
                  size: 26,
                ),
                activeIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.white,
                  size: 26,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.music_note_2,
                  color: ColorPalette.subtitleColor,
                  size: 26,
                ),
                activeIcon: Icon(
                  CupertinoIcons.music_note_2,
                  color: Colors.white,
                  size: 26,
                ),
                label: 'Music',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person,
                  color: ColorPalette.subtitleColor,
                  size: 26,
                ),
                activeIcon: Icon(
                  CupertinoIcons.person,
                  color: Colors.white,
                  size: 26,
                ),
                label: 'Home',
                //  backgroundColor: Colors.red,
              ),
            ],
            selectedItemColor: Colors.white60,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
          ),
        ),
      ),
    );
  }
}
