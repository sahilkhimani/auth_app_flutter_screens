import 'package:authentication_app/login.dart';
import 'package:authentication_app/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingClass extends StatefulWidget {
  const OnBoardingClass({super.key});

  @override
  State<OnBoardingClass> createState() => _OnBoardingClassState();
}

class _OnBoardingClassState extends State<OnBoardingClass> {
  static final PageController _pageController = PageController(initialPage: 0);
  int pageNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Image.asset('images/onBoard1.png'),
                          const SizedBox(height: 10),
                          const Text.rich(
                            style: TextStyle(fontSize: 28),
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: "Work Within ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "Your Favorite Place ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF8D41AC))),
                                TextSpan(
                                    text: "With Ease And Fun",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          const Text(
                            "Never forget to keep track of your professional accomplishments with our app!",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          const Text.rich(
                            style: TextStyle(fontSize: 28),
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: "Get Notified ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF8D41AC))),
                                TextSpan(
                                    text: "When Work Happens",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                          const Text(
                            "Take control of notifications, collaborate live or on your own time",
                          ),
                          const SizedBox(height: 10),
                          Image.asset('images/onBoard2.png'),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/onBoard3.png',
                          ),
                          const SizedBox(height: 10),
                          const Text.rich(
                            style: TextStyle(fontSize: 28),
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: "Stay Organized ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF8D41AC))),
                                TextSpan(
                                    text: "With Your Team",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500))
                              ],
                            ),
                          ),
                          const Text(
                            "Understand the contributions of your colleagues to make a team",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SmoothPageIndicator(
                effect:
                    const ColorTransitionEffect(activeDotColor: Colors.black),
                controller: _pageController,
                count: 3,
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginClass()));
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 56),
                          backgroundColor: const Color(0xFF8D41AC),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 25),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterClass()));
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 56),
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF8D41AC),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xFF8D41AC)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        if (pageNo < 2) {
                          pageNo++;
                        } else {
                          pageNo = 0;
                        }
                        _pageController.animateToPage(pageNo,
                            duration: Durations.long1, curve: Curves.linear);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Color(0x600D1829)),
                      )),
                  const SizedBox(width: 20)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
