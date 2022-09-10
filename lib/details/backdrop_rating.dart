import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import '../models/movie.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key? key,
    required this.size,
    required this.movie,
    required this.kDefaultPadding,
  }) : super(key: key);

  final Size size;
  final Movie movie;
  final double kDefaultPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.38,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.41 - 40,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                image: DecorationImage(
                    image: AssetImage(
                      movie.poster!,
                    ),
                    fit: BoxFit.fill)),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: size.height * 0.11,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: const Color(0xFF12153D).withOpacity(0.2),
                        blurRadius: 50),
                  ]),
              child: FadeInRight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/star.png',
                          height: 25,
                        ),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        RichText(
                            text: TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                              TextSpan(
                                text: '${movie.rating}/',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              const TextSpan(text: '10\n'),
                              TextSpan(
                                  text: '150,220',
                                  style: TextStyle(color: Colors.grey[600]))
                            ]))
                      ],
                    ),
                    // rate this
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star_border_outlined,
                          size: 35,
                        ),
                        SizedBox(
                          height: kDefaultPadding / 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Rate This',
                            style: TextStyle(color: Colors.grey[800]),
                          ),
                        )
                      ],
                    ),
                    // metascore
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(kDefaultPadding / 5),
                          decoration: BoxDecoration(
                            color: Color(0xFF51CF66),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Text(
                            '${movie.metascoreRating}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        const Text(
                          'metascore',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '62 critic reviews',
                          style: TextStyle(color: Colors.grey[600]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // back button
          const SafeArea(
              child: BackButton(
            color: Colors.white,
          )),
        ],
      ),
    );
  }
}
