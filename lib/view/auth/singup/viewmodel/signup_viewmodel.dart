import 'package:flutter/material.dart';
import '../../../../core/constant/color_const.dart';
import '../view/signup_view.dart';

abstract class SignUpViewmodel extends State<SingUpView> {
  TextEditingController? controller1;

  Widget textFieldSignUP(BuildContext context,
      TextEditingController? controller, String labelText, double width) {
    return SizedBox(
      width: width,
      child: TextField(
        onChanged: (value) {
          //.....
        },
        maxLines: 1,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.black,
            ),
        controller: controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.black.withOpacity(0.9),
                fontWeight: FontWeight.w500,
              ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.1,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              color: ColorConst.darkBlue,
              width: 3,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConst.darkBlue,
              width: 1.1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
      ),
    );
  }
}
