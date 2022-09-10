import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ["In Theater", "Box Office", "Coming Soon"];
  double kDefaultPadding = 20.0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: size / 15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Buildcategory(index, context),
      ),
    );
  }

  Padding Buildcategory(int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 0.8),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color:
                      index == selectedCategory ? Colors.black : Colors.grey),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 3),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == selectedCategory
                      ? Colors.red
                      : Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}
