import 'package:flutter/material.dart';

import 'genre_card.dart';

class Genres extends StatelessWidget {
  Genres({Key? key}) : super(key: key);
  double kDefaultPadding = 20.0;
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Action",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animation"
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: kDefaultPadding / 0.51,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => Genrescard(gnere: genres[index])),
    );
  }
}
