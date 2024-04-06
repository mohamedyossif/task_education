import 'package:flutter/material.dart';
import 'package:task_education/screens/bottom_Navigator.dart';
import 'package:task_education/screens/welcome.dart';
import 'package:task_education/service/shared_preference.dart';

bool ischeck = false;
void main()  {
  // use it when you want to interact with engine flutter to get platform channel to excute native code before runApp
  WidgetsFlutterBinding.ensureInitialized();
  //check user is logged before or not
   LocalData.getLogIn().then((value) {
    ischeck = value ?? false;
    runApp(const MyApp());
  });
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        BottomNavigatorScreen.id: (context) => const BottomNavigatorScreen(),
      },
      initialRoute: ischeck ? BottomNavigatorScreen.id : WelcomeScreen.id,
    );
  }
}
