import 'package:flutter/material.dart';
import 'package:khawi/constants.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class KhawiBottomNavigationBar extends StatefulWidget {
  const KhawiBottomNavigationBar({Key? key}) : super(key: key);

  @override
  KhawiBottomNavigationBarState createState() =>
      KhawiBottomNavigationBarState();
}

class KhawiBottomNavigationBarState extends State<KhawiBottomNavigationBar> {
  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 2;
  SnakeShape snakeShape = SnakeShape.indicator;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Color selectedColor = kBottomNavBar;
  Color unselectedColor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SnakeNavigationBar.color(
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
      onTap: (index) => setState(() => _selectedItemPosition = index),

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined), label: 'order history'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined), label: 'packages'),
        BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined), label: 'offers'),
      ],
    );
  }
}
