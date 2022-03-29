import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  HomeAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
      title: Center(
        child: RichText(
          text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
            children: const [
              TextSpan(
                text: "Punk",
                style: TextStyle(
                  color: kSecondaryColor,
                ),
              ),
              TextSpan(
                text: "Food",
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/notification.svg'),
          onPressed: () {},
        ),
      ],
    );
  }
}
