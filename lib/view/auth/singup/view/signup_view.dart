import 'dart:ui';

import 'package:dietitian/core/constant/color_const.dart';
import 'package:dietitian/product/widget/login_button_slide.dart';
import 'package:dietitian/view/auth/login/view/login_view.dart';
import 'package:dietitian/view/auth/singup/viewmodel/signup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SingUpView extends StatefulWidget {
  const SingUpView({super.key});

  @override
  State<SingUpView> createState() => _SingUpViewState();
}

class _SingUpViewState extends SignUpViewmodel {
  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    final double screenHeight = screen.height;
    final double screenWidth = screen.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConst.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Lottie.asset(
              'assets/animations/bgsignup.json',
              repeat: true,
            ),
          ),
          Positioned.fill(
            left: 20,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20,
                sigmaY: 20,
              ),
              child: const SizedBox(),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 60,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: screenWidth / 1.2,
                        child: Column(
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              'Create your account & stay healthy',
                              style: GoogleFonts.poppins(
                                fontSize: 30,
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
              Lottie.asset(
                fit: BoxFit.contain,
                'assets/animations/background-2.json',
                repeat: true,
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: textFieldSignUP(
                    context, controller1, 'Name', screenWidth / 1.7),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: textFieldSignUP(
                    context, controller1, 'Last Name', screenWidth / 1.7),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: textFieldSignUP(
                    context, controller1, 'Password', screenWidth / 1.7),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: textFieldSignUP(
                    context, controller1, 'Email', screenWidth / 1.7),
              ),
              const SizedBox(
                height: 20,
              ),
              /*
              sliderButton(context, 'SING UP'),
              */
              Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(66, 194, 255, 1),
                          Color.fromRGBO(184, 255, 249, 1),
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(0.5, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                      minimumSize: Size(screenWidth / 1.7, 40),
                    ),
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.poppins(
                        color: ColorConst.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginView(),
                        ),
                      );
                    },
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(children: [
                Expanded(
                    child: Divider(
                  color: ColorConst.blackShadow,
                )),
                Text(
                  'OR',
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorConst.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: ColorConst.blackShadow,
                )),
              ]),
              SignInButton(
                Buttons.GoogleDark,
                onPressed: () {
                  //.....
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton(
                    Buttons.LinkedIn,
                    mini: true,
                    onPressed: () {
                      //.....
                    },
                  ),
                  SignInButton(
                    Buttons.Facebook,
                    mini: true,
                    onPressed: () {
                      //.....
                    },
                  ),
                  SignInButton(
                    Buttons.Apple,
                    mini: true,
                    onPressed: () {
                      //.....
                    },
                  ),
                  SignInButton(
                    Buttons.GitHub,
                    mini: true,
                    onPressed: () {
                      //.....
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
