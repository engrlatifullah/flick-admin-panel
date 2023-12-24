import 'package:flutter/cupertino.dart';

import '../screens/custom_nav_bar/flick_mag/flick_magazine.dart';
import '../screens/custom_nav_bar/home_screen/home_screen.dart';
import '../screens/custom_nav_bar/play_list.dart';
import '../screens/custom_nav_bar/scedule_screen/scedule_screen.dart';

int selectedIndex = 0;
final List<Widget> screens = [
  const HomeScreen(),
  const PlaylistScreen(),
  const FlickMagazine(),
  const SceduleScreen(),
];
