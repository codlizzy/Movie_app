import 'package:flutter/material.dart';
import 'categories.dart';
import 'genres.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double kDefaultPadding = 20.0;
    return SingleChildScrollView(
      child: Column(
        children: [
          const CategoryList(),
          Genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          const MovieCarousel(),
        ],
      ),
    );
  }
}
