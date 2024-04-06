import 'package:flutter/material.dart';
import 'package:task_education/component/custom_elevated_button.dart';
import 'package:task_education/constant/constant.dart';
import 'package:task_education/screens/bottom_Navigator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Easy Level
        customElevatedButton(context, text: 'مستوى السهل', onPress: () {
          setState(() {
            // to build ui again
            globalSelectedItem = 1;
            Navigator.pushNamed(context, BottomNavigatorScreen.id);
          });
        },
            stylebutton:
                styleElevatedButton(backgroundColor: Colors.blueAccent[100])),
        //Avager Level
        customElevatedButton(context, text: 'مستوى المتوسط', onPress: () {
          setState(() {
            globalSelectedItem = 2;
          Navigator.pushNamed(context, BottomNavigatorScreen.id);
          });
        }, stylebutton: styleElevatedButton(backgroundColor: Colors.blue)),
        // Hard Level
        customElevatedButton(context, text: 'مستوى الصعب', onPress: () {
          setState(() {
            globalSelectedItem = 3;
            Navigator.pushNamed(context, BottomNavigatorScreen.id);
          });
          
        }, stylebutton: styleElevatedButton(backgroundColor: Colors.blue[900])),
      ],
    );
  }
}
