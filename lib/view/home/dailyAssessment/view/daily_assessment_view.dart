import 'package:dietitian/core/constant/color_const.dart';
import 'package:dietitian/view/home/dailyAssessment/viewmodel/daily_assessment_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DailyView extends StatefulWidget {
  const DailyView({super.key});

  @override
  State<DailyView> createState() => _DailyViewState();
}

class _DailyViewState extends DailyViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.primaryBlue,
      body: Container(),
    );
  }
}
