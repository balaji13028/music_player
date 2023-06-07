import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/color_palette.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorPalette.screenBackColor,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.058,
                width: size.width * 0.13,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: ColorPalette.buttonsBackgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  CupertinoIcons.line_horizontal_3_decrease,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: size.height * 0.058,
                  margin: const EdgeInsets.only(right: 20, left: 15),
                  decoration: BoxDecoration(
                    color: ColorPalette.buttonsBackgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: ColorPalette.titleColor,
                    autocorrect: false,
                    decoration: const InputDecoration(
                        filled: true,
                        prefixIconConstraints:
                            BoxConstraints(minWidth: 0, minHeight: 0),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Icon(
                            CupertinoIcons.search,
                            color: ColorPalette.subtitleColor,
                          ),
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: ColorPalette.subtitleColor),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.038),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Trending right now',
              style: TextStyle(
                fontSize: 28,
                color: ColorPalette.titleColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              color: Colors.transparent,
              height: size.height * 0.25,
              width: size.width,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 25),
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return Container(
                      width: size.width * 0.58,
                      margin:
                          const EdgeInsets.only(right: 15, top: 15, bottom: 10),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: ColorPalette.buttonsBackgroundColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Stack(
                        children: [
                          const Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_horiz_rounded,
                                size: 28,
                                color: ColorPalette.titleColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              alignment: Alignment.center,
                              height: size.height * 0.08,
                              decoration: BoxDecoration(
                                color: Colors.primaries[Random()
                                        .nextInt(Colors.primaries.length)]
                                    .withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'The Dark Side',
                                        style: TextStyle(
                                            color: ColorPalette.titleColor,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(height: 2),
                                      Row(
                                        children: const [
                                          Icon(
                                            CupertinoIcons.music_note_2,
                                            size: 15,
                                            color: ColorPalette.titleColor,
                                          ),
                                          Text(
                                            'Mute - The Dark Side',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: ColorPalette.titleColor,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const Icon(
                                    CupertinoIcons.play_circle_fill,
                                    size: 45,
                                    color: ColorPalette.titleColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  })))
        ],
      )),
    );
  }
}
