import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/movie.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
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
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title!,
                  style: TextStyle(fontSize: 22, color: Colors.grey[900]),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  children: [
                    Text(
                      '${movie.year}',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    const Text(
                      'PG-15',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    const Text(
                      '2h 32min',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height / 14,
            width: size.width / 6,
            child: FloatingActionButton(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: const Icon(
                CupertinoIcons.add,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
