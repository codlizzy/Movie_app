import 'package:flutter/material.dart';
import '../models/movie.dart';
import 'body.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetails(
        movie: movie,
      ),
    );
  }
}
