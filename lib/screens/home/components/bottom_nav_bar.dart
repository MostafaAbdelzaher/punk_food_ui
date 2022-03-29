import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

var listIcons = [
  BottomNavigationBarItem(
    label: 'Home',
    icon: SvgPicture.asset(
      'assets/icons/home.svg',
    ),
  ),
  BottomNavigationBarItem(
    label: 'Following',
    icon: SvgPicture.asset('assets/icons/Following.svg'),
  ),
  BottomNavigationBarItem(
    label: 'Glyph',
    icon: SvgPicture.asset('assets/icons/Glyph.svg'),
  ),
  BottomNavigationBarItem(
    label: 'person',
    icon: SvgPicture.asset('assets/icons/person.svg'),
  ),
];
int currentIndex = 0;

class BuildBottomNav extends StatefulWidget {
  const BuildBottomNav({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BuildBottomNav();
  }
}

class _BuildBottomNav extends State<BuildBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 33,
            color: const Color(0xFF6DEAD9).withOpacity(0.3),
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: listIcons,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {});
          currentIndex = index;
        },
      ),
    );
  }
}
