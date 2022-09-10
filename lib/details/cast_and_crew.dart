import 'package:flutter/material.dart';

import 'cast_card.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;
  const CastAndCrew({Key? key, required this.casts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double kDefaultPadding = 20.0;
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cast & Crew',
            style: TextStyle(color: Colors.grey[700], fontSize: 25),
          ),
          SizedBox(height: kDefaultPadding / 2),
          SizedBox(
            height: 160,
            child: ListView.builder(
                itemCount: casts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CastCard(cast: casts[index])),
          ),
        ],
      ),
    );
  }
}
