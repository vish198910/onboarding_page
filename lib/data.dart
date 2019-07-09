import 'package:flutter/material.dart';

var pageList = [
  PageModel(
      titleGradient: gradient[0],
      image: "images/mercury.png",
      title: "MERCURY",
      bodyText:
          "Mercury is nick named 'Swift Planet' because of it's swiftness around the Sun. Hottest and Nearest to the sun."),
  PageModel(
      titleGradient: gradient[1],
      image: "images/venus.png",
      title: "VENUS",
      bodyText:
          "Venus is nick named as 'Morning star' or 'Evening star' because it appears like a star in the night sky."),
  PageModel(
      titleGradient: gradient[2],
      image: "images/earth.png",
      title: "EARTH",
      bodyText:
          "Blue planet because it appears blue. Thanks to the water. Home for 7 billion human beings and only 3890 tigers."),
  PageModel(
      titleGradient: gradient[3],
      image: "images/mars.png",
      title: "MARS",
      bodyText:
          "'Red planet' because of its color. The colour is due to the iron oxide on the martian surface."),
  PageModel(
      titleGradient: gradient[4],
      image: "images/jupiter.png",
      title: "JUPITER",
      bodyText:
          "'Gaint planet' the largest planet in our solar system. Around 1300 times bigger than earth. "),
  PageModel(
      titleGradient: gradient[5],
      image: "images/saturn.png",
      title: "SATURN",
      bodyText:
          "'The Ringed planet' it's because of the rings this planet has. The rings are made up of ice particles."),
  PageModel(
      titleGradient: gradient[6],
      image: "images/uranus.png",
      title: "URANUS",
      bodyText:
          "'Ice giant' the second largest planet and the coldest planet in our solar system."),
  PageModel(
      titleGradient: gradient[7],
      image: "images/neptune.png",
      title: "NEPTUNE",
      bodyText:
          "'Big blue planet' like earth neptune also appears blue but it is 17 times larger than earth."),
];

List<List<Color>> gradient = [
  [Colors.redAccent, Colors.deepOrange],
  [Colors.red, Colors.brown.shade200],
  [Colors.lightBlueAccent, Colors.greenAccent],
  [Colors.deepOrange, Colors.red],
  [Colors.yellow, Colors.brown],
  [Colors.blueGrey, Colors.lightBlue],
  [Colors.green, Colors.blue],
  [Colors.lightBlueAccent, Colors.blueGrey]
];

class PageModel {
  String image;
  String title;
  String bodyText;
  List<Color> titleGradient = [];
  PageModel({this.image, this.title, this.bodyText, this.titleGradient});
}
