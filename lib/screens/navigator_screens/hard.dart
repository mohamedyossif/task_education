import 'package:flutter/material.dart';
import 'package:task_education/component/custom_row_level.dart';

class HardScreen extends StatelessWidget {
   static const id =' hard';
  const HardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        customRowLevels(context, textRow1: '1', textRow2: '2'),
        customRowLevels(context, textRow1: '3', textRow2: '4'),
       customRowLevels(context, textRow1: '5', textRow2: '6'),
      ],
    );
  }
}