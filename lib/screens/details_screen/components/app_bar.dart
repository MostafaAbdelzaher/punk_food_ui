import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/share.svg'),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/more.svg'),
      ),
    ],
  );
}
