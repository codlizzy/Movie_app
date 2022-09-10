import 'package:flutter/material.dart';
import '../details/details_screen.dart';
import '../models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double kDefaultPadding = 20.0;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreen(
                      movie: movie,
                    ))),
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(blurRadius: 4)],
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(movie.poster!), fit: BoxFit.fill)),
            )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: Text(
                movie.title!,
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/star.png'),
                  height: 20,
                ),
                SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Text(
                  '${movie.rating}',
                  style: const TextStyle(color: Colors.black54),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
