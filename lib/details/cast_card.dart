import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class CastCard extends StatelessWidget {
  final Map cast;
  const CastCard({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double kDefaultPadding = 20.0;
    return FadeInRight(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          margin: EdgeInsets.only(right: kDefaultPadding),
          width: size.width / 5,
          child: Column(
            children: [
              Container(
                height: size.height / 11,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(cast['image']))),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Text(
                cast['orginalName'],
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black87),
              ),
              SizedBox(
                height: kDefaultPadding / 4,
              ),
              Text(
                cast['movieName'],
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
