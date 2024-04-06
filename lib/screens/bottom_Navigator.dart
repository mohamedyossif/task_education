import 'package:flutter/material.dart';
import 'package:task_education/constant/constant.dart';
import 'package:task_education/screens/navigator_screens/avarge.dart';
import 'package:task_education/screens/navigator_screens/easy.dart';
import 'package:task_education/screens/navigator_screens/hard.dart';
import 'package:task_education/screens/navigator_screens/home.dart';

class BottomNavigatorScreen extends StatefulWidget {
  static const id = '/bottom';
  const BottomNavigatorScreen({super.key});

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorScreenState();
}

class _BottomNavigatorScreenState extends State<BottomNavigatorScreen> {
  int _selectedItem = 0;
  //Nagation between Screens
  var mybody = const [HomeScreen(), EasyScreen(), AvagerScreen(), HardScreen()];
  //titles for AppBar
  var mytitles = ['smart-Learn', 'مستوى سهل', "مستوى متوسط", 'مستوى متطور'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        //AppBar
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title:  Text(mytitles[globalSelectedItem] ),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
        ),
        // body Screen
        body: mybody[globalSelectedItem],
        //Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Help'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.back_hand), label: 'Back'),
          ],
          currentIndex: _selectedItem,
          onTap: (int currentIndex) {
            setState(() {
              //check if currentIndex = 0 :2 to keep Home Screen is opened
              if(currentIndex >=0 && currentIndex <=2 ){
                globalSelectedItem=0;
              }
              _selectedItem = currentIndex;
            });
          },
        ),
      ),
    );
  }
}
