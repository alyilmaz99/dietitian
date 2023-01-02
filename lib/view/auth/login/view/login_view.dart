import 'dart:ui';
import 'package:dietitian/product/widget/login_button_slide.dart';
import 'package:dietitian/product/widget/profile_avatar.dart';
import 'package:dietitian/view/auth/login/viewmodel/login_viewmodel.dart';
import 'package:dietitian/view/auth/singup/view/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/constant/color_const.dart';
import '../../../../product/widget/login_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends LoginViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            child: Lottie.asset(
              fit: BoxFit.contain,
              'assets/animations/background-2.json',
              repeat: true,
            ),
          ),
          Positioned.fill(
            left: 20,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15,
                sigmaY: 20,
              ),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: 60,
                right: MediaQuery.of(context).size.width / 3,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 160,
                    child: Column(
                      children: [
                        Text(
                          'Stay healthy & live',
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Lottie.asset(
              alignment: Alignment.bottomLeft,
              repeat: true,
              'assets/animations/login-bottom.json',
            ),
          ),
          Positioned(
            child: Lottie.asset(
              alignment: Alignment.topRight,
              repeat: true,
              'assets/animations/login-anim.json',
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.7,
            left: MediaQuery.of(context).size.width / 2.7,
            child: userInfo(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: MediaQuery.of(context).size.width / 2.7,
            child: Text(
              'Serdem',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                  color: ColorConst.black),
            ),
          ),
          fistNameField(
              context,
              'Password',
              MediaQuery.of(context).size.height / 1.7,
              controller,
              MediaQuery.of(context).size.width / 1.5),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.53,
            left: MediaQuery.of(context).size.width / 1.9,
            child: Text(
              'forgot password?',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: ColorConst.textColor),
            ),
          ),
          sliderButton(context, 'LOGIN'),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.06,
            left: MediaQuery.of(context).size.width / 3.6,
            child: GestureDetector(
              onTap: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SingUpView(),
                  ),
                ),
              },
              child: Row(
                children: [
                  Text(
                    'Need an account?',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: ColorConst.textColor),
                  ),
                  Text(
                    ' SIGN UP',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        color: ColorConst.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
