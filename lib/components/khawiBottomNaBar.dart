import 'package:flutter/material.dart';
import 'package:khawi/constants.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:khawi/screens/khawiMainPage.dart';
import 'package:khawi/screens/offersPage.dart';
import 'package:khawi/screens/ordersPage.dart';
import 'package:khawi/screens/packagePage.dart';

class KhawiBottomNavigationBar extends StatefulWidget {
  const KhawiBottomNavigationBar({
    super.key,
  });

  @override
  KhawiBottomNavigationBarState createState() =>
      KhawiBottomNavigationBarState();
}

class KhawiBottomNavigationBarState extends State<KhawiBottomNavigationBar> {
  List<Widget> pages = [
    const KhawiHomePage(),
    const Orders(),
    packagePage(),
    OffersPage(),
  ];

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.indicator;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Widget? currPage;
  Color selectedColor = kBottomNavBar;
  Color unselectedColor = Colors.blueGrey;
  void _onPageChanged(int page) {
    currPage = pages[page];
    switch (page) {
      case 0:
        setState(() {
          snakeBarStyle = SnakeBarBehaviour.floating;
          snakeShape = SnakeShape.circle;
          padding = const EdgeInsets.all(12);
          bottomBarShape =
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25));
          showSelectedLabels = false;
          showUnselectedLabels = false;
        });
        break;
      case 1:
        setState(() {
          snakeBarStyle = SnakeBarBehaviour.pinned;
          snakeShape = SnakeShape.circle;
          padding = EdgeInsets.zero;
          bottomBarShape =
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25));
          showSelectedLabels = false;
          showUnselectedLabels = false;
        });
        break;

      case 2:
        setState(() {
          snakeBarStyle = SnakeBarBehaviour.pinned;
          snakeShape = SnakeShape.rectangle;
          padding = EdgeInsets.zero;
          bottomBarShape =
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(25));
          showSelectedLabels = true;
          showUnselectedLabels = true;
        });
        break;
      case 3:
        setState(() {
          snakeBarStyle = SnakeBarBehaviour.pinned;
          snakeShape = SnakeShape.indicator;
          padding = EdgeInsets.zero;
          bottomBarShape = null;
          showSelectedLabels = false;
          showUnselectedLabels = false;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: pages[_selectedItemPosition],
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: kButtonsColor,
        selectedItemColor:
            snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: kBottomNavBar,

        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,

        currentIndex: _selectedItemPosition,
        onTap: (index) {
          setState(() {
            _selectedItemPosition = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            label: 'order history',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'packages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'offers',
          ),
        ],
      ),
    );
  }
}
