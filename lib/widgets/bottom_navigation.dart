import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/screens/all_products.dart';
import 'package:ecommerce_app/screens/home_page.dart';
import 'package:ecommerce_app/screens/product_page.dart';
import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {

  int mIndex = 0;

  List<Widget> bottomNavigationList = [
    HomePage(),
    AllProducts(),
    AllProducts(),
    AllProducts(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: mIndex,
        onDestinationSelected: (index){
          mIndex = index;
          setState(() {

          });
        },
      destinations: [

        NavigationDestination(icon: Icon(Icons.home), label: ""),
        NavigationDestination(icon: Icon(Icons.shopping_bag), label: ""),
        NavigationDestination(icon: Icon(Icons.account_circle), label: ""),
        NavigationDestination(icon: Icon(Icons.grid_view_rounded), label: ""),
      ],),


      body: bottomNavigationList[mIndex],
    );
  }
}
