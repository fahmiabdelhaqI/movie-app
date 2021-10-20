import 'package:flutter/material.dart';

import 'package:movie_apps/ui/favorite/favorite_screen.dart';
import 'package:movie_apps/ui/home/home_screen.dart';
import 'package:movie_apps/ui/profile/profile_screen.dart';
import 'package:movie_apps/ui/seacrh/search_screen.dart';
import 'package:movie_apps/values/colors.dart';
import 'package:movie_apps/values/textstyle.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  static const String routeName = '/dashboard';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndexBody = 0;

  final List<Widget> _dashboardBodyWidgets = <Widget>[
     const HomeScreens(),
     const SearchScreens(),
     FavoriteMoviesScreen(),
     const ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: IndexedStack(
        index: _selectedIndexBody,
        children: _dashboardBodyWidgets,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: _mainMenuItems(),
        currentIndex: _selectedIndexBody,
        onTap: (index) {
          setState(() {
            _selectedIndexBody = index;
          });
        },
        selectedLabelStyle: selectedMainMenuStyle,
        unselectedLabelStyle: unselectedMainMenuStyle,
      ),
    );
  }

  List<BottomNavigationBarItem> _mainMenuItems() {
    return <BottomNavigationBarItem>[
      _mainMenuItemWidget('Home', Icons.home),
      _mainMenuItemWidget('Search', Icons.search),
      _mainMenuItemWidget('Favorite', Icons.favorite),
      _mainMenuItemWidget('Profile', Icons.person),
    ];
  }

  BottomNavigationBarItem _mainMenuItemWidget(
      String menuTitle, IconData iconData) {
    return BottomNavigationBarItem(
      activeIcon: Padding(
        padding: EdgeInsets.only(top: 14.0, bottom: 14.0),
        child: Icon(
          iconData,
          color: colorSecondary,
        ),
      ),
      icon: Padding(
        padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
        child: Icon(
          iconData,
          color: colorGreyLight,
        ),
      ),
      label: menuTitle,
    );
  }
}
