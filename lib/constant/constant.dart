 import 'package:flutter/material.dart';
 //
 int globalSelectedItem = 0;
// screen 
double heightScreen(context)=>MediaQuery.of(context).size.height;
double widthScreen(context)=>MediaQuery.of(context).size.width;
// button Style
ButtonStyle styleElevatedButton({ backgroundColor,  foregroundColor, textstyle})=>ElevatedButton.styleFrom(
                      backgroundColor: backgroundColor ??Colors.blue,
                      foregroundColor: foregroundColor??Colors.white,
                      textStyle:  textstyle ??const TextStyle(fontSize: 30),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero),
                    );
 // text style
 TextStyle textStyleLogo()=>TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.blueAccent[400]);