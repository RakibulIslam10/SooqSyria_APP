import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/views/Menus/screen/Menus_screen.dart';
import 'package:sooqyria/views/favorite/screen/favorite_screen.dart';
import 'package:sooqyria/views/home/screen/home_screen.dart';
import 'package:sooqyria/views/inbox/screen/inbox_screen.dart';

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<Widget> bodyPages = [
    HomeScreen(),
    InboxScreen(),
    FavoriteScreen(),
    MenusScreen(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
