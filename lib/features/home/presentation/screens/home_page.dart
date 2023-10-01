import 'dart:developer';
import 'home_screen.dart';
import 'package:flutter/material.dart';
import '../../../bookmarks/presentation/screens/bookmark_screen.dart';
import '../../../../shared/widgets/app_bar.dart';
import '../../../../shared/widgets/app_bottom_navigation.dart';
import '../../../../shared/widgets/app_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const AppDrawer(),
      body: homePageBody(),
      bottomNavigationBar: AppBottomNavigation(
        currentIndex: _currentIndex,
        onTapped: _onTabTapped,
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      log('index $index');
      _currentIndex = index;
    });
  }

  Widget homePageBody() {
    switch (_currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const BookmarkScreen();
      default:
        return Container();
    }
  }
}
