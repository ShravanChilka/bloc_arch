import 'explore/explore_page.dart';
import 'profile/profile_page.dart';
import 'saves/saves_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int currentIndex = 0;
  final List<Widget> pages = const [
    ExplorePage(),
    SavesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        height: 70,
        destinations: const [
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
            label: 'Search',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.heart),
            label: 'Saves',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.user),
            label: 'Profile',
          ),
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: pages[currentIndex],
    );
  }
}
