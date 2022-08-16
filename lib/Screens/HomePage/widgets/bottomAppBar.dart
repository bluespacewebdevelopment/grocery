import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget bottomBar(context, int index) {
  List<BottomNavigationBarItem> bottom = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'Home',
        activeIcon: Icon(
          Icons.home,
          color: Colors.red,
        )),
    BottomNavigationBarItem(
        icon: Icon(Icons.subscriptions),
        label: 'Subscription',
        activeIcon: Icon(
          Icons.subscriptions,
          color: Colors.red,
        )),
    BottomNavigationBarItem(
        icon: FloatingActionButton(
            onPressed: () {}, tooltip: 'Profile', child: Icon(Icons.person)),
        label: 'Profile',
        activeIcon: Icon(
          Icons.person,
          color: Colors.red,
        )),
    BottomNavigationBarItem(
        icon: Icon(Icons.category),
        label: 'Category',
        activeIcon: Icon(
          Icons.category,
          color: Colors.red,
        )),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: 'Cart',
        activeIcon: Icon(
          Icons.shopping_cart,
          color: Colors.red,
        ))
  ];

  return BottomNavigationBar(
      currentIndex: index,
      landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
      selectedIconTheme: IconThemeData(
          size: 30,
          opacity: 1,
          shadows: [Shadow(color: Colors.green[100]!, blurRadius: 20)]),
      unselectedIconTheme: IconThemeData(
          size: 24,
          opacity: 1,
          shadows: [Shadow(color: Colors.green[100]!, blurRadius: 20)]),
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.blue[100],
      selectedItemColor: Colors.green,
      onTap: (item) {
        if (item == 0) {
          Get.toNamed('MyHomepage');
        } else if (item == 1) {
          Get.toNamed('viewAllSubscription');
        } else if (item == 2) {
          Get.toNamed('MyHomepage');
        } else if (item == 3) {
          Get.toNamed('Exactcatallproductshow');
        } else if (item == 4) {
          Get.toNamed('viewSubscriptionOrder');
        }
      },
      items: bottom.map((e) => e).toList());
}
