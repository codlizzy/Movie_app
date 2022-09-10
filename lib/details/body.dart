import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/details/title_duration_and_fav_btn.dart';
import 'package:movie_app/models/movie.dart';
import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
import 'genres.dart';

class BodyDetails extends StatelessWidget {
  final Movie movie;
  const BodyDetails({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double kDefaultPadding = 20.0;
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackdropAndRating(
            size: size, movie: movie, kDefaultPadding: kDefaultPadding),
        SizedBox(
          height: kDefaultPadding / 5,
        ),
        TitleDurationAndFabBtn(kDefaultPadding: kDefaultPadding, movie: movie),
        Genress(kDefaultPadding: kDefaultPadding, movie: movie),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
          child: Text(
            'Plot Summary',
            style: TextStyle(fontSize: 25, color: Colors.grey[700]),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            movie.plot!,
            style: TextStyle(color: Colors.grey[500]),
          ),
        ),
        CastAndCrew(
          casts: movie.cast!,
        ),
      ],
    );
  }
}
