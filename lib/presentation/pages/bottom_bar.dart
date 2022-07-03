import 'package:remove/common/constants.dart';
import 'package:remove/presentation/pages/home_movie_page.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const HomeMoviePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        iconSize: 40,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.movie),
          //   label: 'Movies',
          //   backgroundColor: kDavysGrey,
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.tv),
          //   label: 'Tv',
          //   backgroundColor: kDavysGrey,
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.topic),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '',
          ),
        ],
      ),
    );
  }
}
