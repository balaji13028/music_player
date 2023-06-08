// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ListOfSongs {
  int? id;
  String? title;
  String? singer;
  String? songImage;
  String? song;
  Color? imagecolor;

  ListOfSongs(
      {this.id,
      this.title,
      this.singer,
      this.songImage,
      this.song,
      this.imagecolor});
}

List<ListOfSongs> songslist = [
  ListOfSongs(
      id: 0,
      song: "assets/Safari.mp3",
      songImage:
          "https://naasongsmix.com/wp-content/uploads/2022/11/Safari.jpg",
      singer: "Nick Ray",
      title: "Safari ",
      imagecolor: Colors.green.withOpacity(0.9)),
  ListOfSongs(
    id: 1,
    song: "assets/Lovely(PagalWorld).mp3",
    songImage:
        "https://naasongspro.com/wp-content/uploads/2022/06/maxresdefault-12.jpg",
    singer: "Billie Eilish, Khalid",
    title: "Lovely(PagalWorld)",
    imagecolor: Colors.orange.withOpacity(0.9),
  ),
  ListOfSongs(
    id: 2,
    song: "assets/_Dynamite(PagalWorld.com.se).mp3",
    songImage:
        "https://www.pagalworld.com.se/siteuploads/thumb/sft15/7120_4.jpg",
    singer: "BTS",
    title: "Dynamite",
    imagecolor: Colors.blue.withOpacity(0.9),
  ),
  ListOfSongs(
    id: 3,
    song: "assets/Witt-Lowry-Into-Your-Arms(PagalWorld).mp3",
    songImage:
        "https://naasongspro.com/wp-content/uploads/2022/04/maxresdefault-2-2.jpg",
    singer: "Witt Lowry ",
    title: "Into Your Arms(PagalWorld)",
    imagecolor: Colors.blueGrey.withOpacity(0.9),
  ),
];
