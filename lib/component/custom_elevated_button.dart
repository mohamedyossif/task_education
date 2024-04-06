import 'package:flutter/material.dart';
import 'package:task_education/constant/constant.dart';

 customElevatedButton(context,{text,   required onPress ,stylebutton})=>Expanded(
          child: SizedBox(
            height: heightScreen(context),
            width: widthScreen(context),
            child: ElevatedButton(
              style: stylebutton ,
              onPressed:onPress ,
              child: Text(text ?? " Smart-Learn",textAlign: TextAlign.center,),
            ),
          ),
        );