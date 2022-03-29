import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/body_screen.dart';
import 'components/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomeAppBar(),
        body: const Body(),
        bottomNavigationBar: const BuildBottomNav());
  }
}
