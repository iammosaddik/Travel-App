import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'home_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
 List<Widget> screenList=[
   const HomeScreen(),
   const Text('Second Page'),
   const Text('Third Page'),
   const Text('Fourth Page'),
 ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          items:const [
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.home, ),
                label: 'Home',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.discovery,),
                label: 'Discovery',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.notification,),
                label: 'Notification',
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.category,),
                label: 'Category',
                backgroundColor: Colors.pink),
          ]
      ),
      body: Center(
          child: screenList.elementAt(selectedIndex),
      ),
    );
  }
}
