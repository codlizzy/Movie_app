import 'package:flutter/material.dart';
import 'package:movie_app/screens/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  // appbar
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      // menu icon
      leading: IconButton(
        padding: const EdgeInsets.only(left: 20),
        icon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset('assets/images/menu.png'),
        ),
        onPressed: () {},
      ),
      // Search icon
      actions: [
        IconButton(
            padding: const EdgeInsets.only(right: 20),
            onPressed: () {},
            icon: Image.asset('assets/images/search.png'))
      ],
    );
  }
}
