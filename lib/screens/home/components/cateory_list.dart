import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(
            title: 'Combo meal',
            press: () {},
            isActive: true,
          ),
          CategoryItem(
            title: 'Chicken',
            press: () {},
          ),
          CategoryItem(
            title: 'Beverages',
            press: () {},
          ),
          CategoryItem(
            title: 'Snacks & sides',
            press: () {},
          ),
        ],
      ),
    );
  }
}
