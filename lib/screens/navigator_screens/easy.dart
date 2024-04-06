import 'package:flutter/material.dart';
import 'package:task_education/component/custom_elevated_button.dart';
import 'package:task_education/constant/constant.dart';

class EasyScreen extends StatelessWidget {
  static const id = ' easy';
  const EasyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        customElevatedButton(context,
        onPress: (){},
            text: 'حـــروف',
            stylebutton:
                styleElevatedButton(textstyle: textStyleLogo(),backgroundColor: Colors.deepOrange[200])),
        customElevatedButton(context,
        onPress: (){},
            text: 'أرقــــام ',
            stylebutton:
                styleElevatedButton(textstyle: textStyleLogo(), backgroundColor: Colors.deepOrange[300])),
      ],
    );
  }
}
