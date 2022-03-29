import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Offers & Discount',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 166,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image:
                        AssetImage('assets/images/beyond-meat-mcdonalds.png'))),
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFFFF961F).withOpacity(0.7),
                    kPrimaryColor.withOpacity(0.7),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                        child: SvgPicture.asset('assets/icons/macdonalds.svg')),
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: 'Get Discount of \n',
                              style: TextStyle(fontSize: 16),
                            ),
                            TextSpan(
                                text: '30% \n',
                                style: TextStyle(
                                    fontSize: 43, fontWeight: FontWeight.bold)),
                            TextSpan(
                              text:
                                  "at MacDonald's on your first order & instant cashback",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
