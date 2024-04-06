 import 'package:flutter/material.dart';
import 'package:task_education/component/custom_elevated_button.dart';
import 'package:task_education/constant/constant.dart';

Expanded customRowLevels(BuildContext context,
      {required textRow1, required textRow2}) {
    return Expanded(
      child: Row(
        children: [
          customElevatedButton(context,
              onPress: () {},
              text: textRow1,
              stylebutton: styleElevatedButton(
                  textstyle: textStyleLogo(),
                  backgroundColor: Colors.deepOrange[200])),
          customElevatedButton(context,
              onPress: () {},
              text: textRow2,
              stylebutton: styleElevatedButton(
                  textstyle: textStyleLogo(),
                  backgroundColor: Colors.deepOrange[200])),
        ],
      ),
    );
  }

