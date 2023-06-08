import 'dart:math';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/color_palette.dart';
import 'package:music_player/model_classes.dart/songs_list.dart';

import 'model_classes.dart/song_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final audioPlayer = AssetsAudioPlayer();

  List<bool> isplaying = [];
  List<bool> multiplaying = [];

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  playmusic() async {
    await audioPlayer.play();
  }

  pausemusic() async {
    await audioPlayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: ColorPalette.backgroundGradient,
          ),
          child: SafeArea(
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
                            hintStyle:
                                TextStyle(color: ColorPalette.subtitleColor),
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
                child: audioPlayer.builderIsPlaying(
                    builder: ((context, play) => ListView.builder(
                          padding: const EdgeInsets.only(left: 25),
                          scrollDirection: Axis.horizontal,
                          physics: const ClampingScrollPhysics(),
                          itemCount: songslist.length,
                          itemBuilder: ((context, index) {
                            final player =
                                AssetsAudioPlayer.withId(index.toString());
                            multiplaying.add(false);
                            return Container(
                              width: size.width * 0.58,
                              margin: const EdgeInsets.only(
                                  right: 15, top: 15, bottom: 10),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        songslist[index].songImage!),
                                    fit: BoxFit.cover),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                        color: songslist[index].imagecolor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  songslist[index].title!,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      color: ColorPalette
                                                          .titleColor,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                const SizedBox(height: 2),
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      CupertinoIcons
                                                          .music_note_2,
                                                      size: 15,
                                                      color: ColorPalette
                                                          .titleColor,
                                                    ),
                                                    Text(
                                                      songslist[index].singer!,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                          fontSize: 10,
                                                          color: ColorPalette
                                                              .titleColor,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              setState(() {
                                                multiplaying[index] =
                                                    !multiplaying[index];
                                              });
                                              if (multiplaying[index]) {
                                                try {
                                                  await player.open(
                                                    Audio(
                                                      songslist[index].song!,
                                                    ),
                                                  );
                                                } catch (e) {
                                                  print(e);
                                                }
                                              } else if (multiplaying[index] ==
                                                  false) {
                                                await player.stop();
                                              }
                                            },
                                            child: Icon(
                                              multiplaying[index]
                                                  ? CupertinoIcons.pause_fill
                                                  : CupertinoIcons
                                                      .play_circle_fill,
                                              size: 45,
                                              color: ColorPalette.titleColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ))),
              ),
              SizedBox(height: size.height * 0.025),
              Container(
                  color: Colors.transparent,
                  height: size.height * 0.05,
                  width: size.width,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: songCetegoryList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            gradient:
                                index == 0 ? ColorPalette.buttonGradient : null,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          songCetegoryList[index].title.toString(),
                          style:
                              const TextStyle(color: ColorPalette.titleColor),
                        ),
                      );
                    },
                  )),
              SizedBox(height: size.height * 0.02),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: songslist.length,
                  itemBuilder: (context, index) {
                    isplaying.add(false);

                    return ListTile(
                      onTap: () async {
                        if (isplaying[index] == true) {
                          setState(() {
                            isplaying[index] = false;
                            isplaying.clear();
                          });
                          pausemusic();
                        } else {
                          await audioPlayer.open(
                            Audio(
                              songslist[index].song!,
                            ),
                            autoStart: false,
                          );
                          playmusic();

                          setState(() {
                            isplaying[index] = true;
                          });
                        }
                      },
                      visualDensity: VisualDensity.standard,
                      leading: Container(
                        clipBehavior: Clip.hardEdge,
                        height: size.height * 0.1,
                        width: size.width * 0.17,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 1.5,
                                color: Colors.white24,
                              )
                            ]),
                        child: Image.network(
                          songslist[index].songImage!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        songslist[index].title!,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: ColorPalette.titleColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.person_solid,
                            size: 12,
                            color: ColorPalette.subtitleColor,
                          ),
                          const SizedBox(width: 5),
                          Flexible(
                            child: Text(
                              songslist[index].singer!,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: ColorPalette.subtitleColor,
                                  fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                      trailing: const Icon(
                        CupertinoIcons.heart,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
