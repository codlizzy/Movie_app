import 'package:flutter/material.dart';

class Genrescard extends StatelessWidget {
  final String? gnere;
  Genrescard({Key? key, this.gnere}) : super(key: key);
  double kDefaultPadding = 20.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        gnere!,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 17,
        ),
      ),
    );
  }
}
