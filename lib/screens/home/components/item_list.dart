import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import '../../details_screen/details_screen.dart';
import 'item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
              title: "Burger & beer",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen()),
                );
              },
              shopName: "MacDonald's",
              svgPic: 'assets/icons/burger_beer.svg'),
          ItemCard(
              title: "Chinese & Noodles",
              press: () {},
              shopName: "Wendys",
              svgPic: 'assets/icons/chinese_noodles.svg'),
          ItemCard(
              title: "Burger & beer",
              press: () {},
              shopName: "MacDonald's",
              svgPic: 'assets/icons/macdonalds.svg'),
        ],
      ),
    );
  }
}
