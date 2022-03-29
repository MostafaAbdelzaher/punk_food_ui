import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../components/search_box.dart';
import '../../../constants.dart';
import 'cateory_list.dart';
import 'discount_card.dart';
import 'item_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          const CategoryList(),
          const ItemList(),
          const DiscountCard()
        ],
      ),
    );
  }
}
