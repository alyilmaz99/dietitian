import 'package:flutter/material.dart';

import '../../core/constant/color_const.dart';

Widget _userAvatar() {
  return const CircleAvatar(
    radius: 50,
    backgroundImage: AssetImage('assets/images/profile.png'),
  );
}

Widget _userPersonalInfo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        flex: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Serdem',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                  color: ColorConst.textColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: ColorConst.textColor,
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Turkey, Istanbul',
                  style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 2,
                      color: ColorConst.textColor),
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Widget userInfo() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _userAvatar(),
    ],
  );
}
