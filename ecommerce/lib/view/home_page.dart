// ignore_for_file: unused_field

import 'package:ecommerce/components/bottom_navbar.dart';
import 'package:ecommerce/view/cart_page.dart';
import 'package:ecommerce/view/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //index of navigation
  int _selectedIndex = 0;

  //BottomBar navigation
  navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    //Shop page
    const ShopPage(),

    //Cart page
    const CartPage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomButtomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}