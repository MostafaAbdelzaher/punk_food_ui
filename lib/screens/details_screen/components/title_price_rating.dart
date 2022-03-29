import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../constants.dart';
import 'body.dart';

class TitlePriceRating extends StatelessWidget {
  final int price, numOfPrice;
  final String name;
  final RatingChangeCallback onRatingChange;
  const TitlePriceRating({
    Key? key,
    required this.price,
    required this.numOfPrice,
    required this.name,
    required this.onRatingChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: Theme.of(context).textTheme.headline6),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SmoothStarRating(
                      rating: 3,
                      color: kPrimaryColor,
                      onRatingChanged: (value) {
                        onRatingChange(value);
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('$numOfPrice Reviews')
                  ],
                )
              ],
            ),
          ),
          priceTag(context, price: price)
        ],
      ),
    );
  }

  ClipPath priceTag(BuildContext context, {required int price}) {
    return ClipPath(
      clipper: PricerClipper(),
      child: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.symmetric(vertical: 15),
        width: 65,
        height: 65,
        color: kPrimaryColor,
        child: Text(
          '\$$price',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class PricerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 20);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - 20);

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
