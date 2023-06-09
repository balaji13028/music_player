import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/color_palette.dart';
import 'package:music_player/model_classes.dart/recent_favourites.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        gradient: ColorPalette.backgroundGradient,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            // Top menu and fav option <-- start -->
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                  CupertinoIcons.back,
                  color: Colors.white,
                ),
              ),
              Container(
                height: size.height * 0.058,
                width: size.width * 0.13,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: ColorPalette.buttonsBackgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  CupertinoIcons.heart,
                  color: Colors.white,
                ),
              ),
            ]),
            // Top menu and fav option <-- End -->
            SizedBox(height: size.height * 0.03),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Recent favourites',
                style: TextStyle(
                  fontSize: 28,
                  color: ColorPalette.titleColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // List of favourites list <-- start -->
            Expanded(
              child: GridView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                itemCount: favouritesList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    mainAxisExtent: 230,
                    crossAxisSpacing: 20),
                itemBuilder: ((context, index) {
                  var fav = favouritesList[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        height: size.height * 0.18,
                        width: size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(fav.image),
                              fit: BoxFit.cover),
                          color: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Text(
                        fav.title.toString(),
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 14,
                            color: ColorPalette.titleColor,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        fav.description.toString(),
                        style: const TextStyle(
                            fontSize: 10,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  );
                }),
              ),
            ),
            // List of favourites list <-- End -->
          ],
        ),
      ),
    );
  }
}
