import 'package:flutter/cupertino.dart';
import '../../../constants.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Function press;
  final bool isActive;
  const CategoryItem({
    Key? key,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: isActive
                  ? const TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    )
                  : const TextStyle(
                      fontSize: 12,
                    ),
            ),
            if (isActive)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor,
                ),
              )
          ],
        ),
      ),
    );
  }
}
