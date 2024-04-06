import 'package:flutter/material.dart';
import 'package:task_education/component/custom_elevated_button.dart';
import 'package:task_education/component/custom_row_level.dart';
import 'package:task_education/constant/constant.dart';

class AvagerScreen extends StatelessWidget {
  static const id = ' avager';
  const AvagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customRowLevels(context, textRow1: 'المنزل والملابس', textRow2: 'الطعام'),
        customRowLevels(context, textRow1: 'الزمن وصول الصف', textRow2: 'الحيوانات'),
        customElevatedButton(context,
            onPress: () {},
            text: 'الأسرة والأصدقاء والناس',
            stylebutton: styleElevatedButton(
                textstyle: textStyleLogo(),
                backgroundColor: Colors.deepOrange[200])),
      ],
    );
  }

  

}
