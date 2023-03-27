import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../components/login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              bottom: 200,
              top: 100,
              child: Image.asset(
                'assets/pngtree.png',
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
            const RiveAnimation.asset(
              'assets/shape_animation.riv',
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Learn\ndesign &\ncode ',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 60,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Don't skip design.\nLearn design and code by building real apps with flutter.",
                    style: TextStyle(
                      fontFamily: 'Intel',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  const Text(
                    'Purchase includes access to 30+ courses,\n240+ premium tutorials,120+ hours of videos,\nsource films of certificates',
                    style: TextStyle(
                      fontFamily: 'Intel',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  //  const SizedBox(
                  //   height: 20,
                  // ),

                  GestureDetector(
                    onTap: () {
                      signInDialog(context);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 45,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 216, 48, 54),
                            border: Border.all(
                              color: const Color.fromARGB(255, 216, 48, 54),
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14.5, 0, 0),
                          child: Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width * 0.6,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              ),
                                borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Row(
                                children: const [
                                  Icon(Icons.arrow_forward),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Start the courses',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
