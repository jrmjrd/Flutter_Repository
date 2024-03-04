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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(left: 15),
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black54,
                ),
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
              ),
            );
          }
        ),
      ),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        backgroundColor: Colors.grey[600],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  //Logo
                  DrawerHeader(
                    child: Image.asset(
                      'assets/logos/adidas_logo.png',
                      height: 100,
                      color: Colors.white,
                    ),
                  ),
              
                  //Pages
                  const ListTile(
                    leading: Icon(Icons.home),
                    title: Text('H O M E'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  const ListTile(
                    leading: Icon(Icons.info),
                    title: Text('About'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomButtomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}