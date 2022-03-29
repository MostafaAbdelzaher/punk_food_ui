import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/details_screen/components/title_price_rating.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import 'item_image.dart';
import 'order_button.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const ItemImage(
          imageSrc: 'assets/images/burger.png',
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                shopName(name: "MacDonald's"),
                TitlePriceRating(
                  onRatingChange: (value) {},
                  price: 15,
                  name: 'Cheese burger',
                  numOfPrice: 24,
                ),
                const Text(
                  "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
                  style: TextStyle(
                    height: 1.5,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                OrderButton(
                  size: size,
                  press: () {},
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Row shopName({required String name}) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: kSecondaryColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(name)
      ],
    );
  }
}
