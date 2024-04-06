import 'package:flutter/material.dart';
import 'package:task_education/constant/constant.dart';
import 'package:task_education/screens/bottom_Navigator.dart';
import 'package:task_education/service/shared_preference.dart';

class WelcomeScreen extends StatelessWidget {
  static const id='/welcome';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = heightScreen(context);
    var width = widthScreen(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.2, bottom: height * 0.2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //name Application
                Text(
                  "Learn-Smart",
                  style: textStyleLogo(),
                ),
                // logo
                Image(
                  width: width * 0.7,
                  height: height * 0.25,
                  image: const AssetImage('images/logo.png'),
                ),
                 SizedBox(
                  width: width * 0.5,
                  height: height * 0.06,
                  child: ElevatedButton(
                    style: styleElevatedButton(
                      backgroundColor:Colors.blue,
                      foregroundColor:  Colors.white,
                      textstyle:const TextStyle(fontSize: 20) ),
                    onPressed: () {
                      LocalData.saveLogIn(true).then((value) =>Navigator.pushNamed(context, BottomNavigatorScreen.id) );
                    },
                    child: const Text('إبــدأ'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
