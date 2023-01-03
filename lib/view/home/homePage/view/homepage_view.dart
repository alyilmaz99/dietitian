import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:dietitian/core/constant/color_const.dart';
import 'package:dietitian/view/home/dailyAssessment/view/daily_assessment_view.dart';
import 'package:flutter/material.dart';

import '../../profile/view/profile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 1;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CircleNavBar(
        activeIcons: [
          Icon(
            Icons.data_saver_on,
            color: ColorConst.textColor,
          ),
          Icon(
            Icons.view_day_outlined,
            color: ColorConst.textColor,
          ),
          Icon(
            Icons.date_range,
            color: ColorConst.textColor,
          ),
          Icon(
            Icons.person,
            color: ColorConst.textColor,
          ),
        ],
        inactiveIcons: [
          Text(
            "Daily",
            style: TextStyle(
              color: ColorConst.textColor,
            ),
          ),
          Text(
            "Program",
            style: TextStyle(
              color: ColorConst.textColor,
            ),
          ),
          Text(
            "Date",
            style: TextStyle(
              color: ColorConst.textColor,
            ),
          ),
          Text(
            "Profile",
            style: TextStyle(
              color: ColorConst.textColor,
            ),
          ),
        ],
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            ColorConst.secondBlue,
            ColorConst.thirdBlue,
            ColorConst.darkBlue,
          ],
        ),
        height: 60,
        circleWidth: 60,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: ColorConst.blackShadow,
        elevation: 10,
        color: Colors.black.withOpacity(0.9),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: [
          const DailyView(),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: ColorConst.beigeSplash,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: ColorConst.beigeSplash,
          ),
          ProfileView(),
        ],
      ),
    );
  }
}
