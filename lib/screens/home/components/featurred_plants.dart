import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
            image: "https://image-us.eva.vn/upload/3-2022/images/2022-07-15/image13-1657867526-681-width1080height1007.jpg",
            press: () {},
          ),
          FeaturePlantCard(
            image: "https://image-us.eva.vn/upload/3-2022/images/2022-07-15/image13-1657867526-681-width1080height1007.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}


class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({required this.image, this.press, Key? key}) : super(key: key);
  final String image;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://image-us.eva.vn/upload/3-2022/images/2022-07-15/image13-1657867526-681-width1080height1007.jpg"),
          ),
        ),
      ),
    );
  }
}

