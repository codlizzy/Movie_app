import 'package:flutter/material.dart';

import '../models/movie.dart';
import '../screens/genre_card.dart';

class Genress extends StatelessWidget {
  const Genress({
    Key? key,
    required this.kDefaultPadding,
    required this.movie,
  }) : super(key: key);

  final double kDefaultPadding;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: size.height / 20,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movie.genra?.length,
            itemBuilder: (context, index) => Genrescard(
                  gnere: movie.genra![index],
                )),
      ),
    );
  }
}
