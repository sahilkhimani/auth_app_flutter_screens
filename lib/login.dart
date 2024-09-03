import 'package:authentication_app/on_boarding_page.dart';
import 'package:authentication_app/register.dart';
import 'package:flutter/material.dart';

class LoginClass extends StatefulWidget {
  const LoginClass({super.key});

  @override
  State<LoginClass> createState() => _LoginClassState();
}

class _LoginClassState extends State<LoginClass> {
  bool isHidden = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 79),
                const Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Welcome Back!",
                      style: TextStyle(
                          fontSize: 28,
                          color: Color(0xFF8D41AC),
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " Glad to see you, Again",
                      style: TextStyle(
                          fontSize: 28,
                          color: Color(0xFF0D1829),
                          fontWeight: FontWeight.w500))
                ])),
                const SizedBox(height: 40),
                const TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF7F8F9),
                      hintText: "Enter your email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)))),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: isHidden,
                  decoration: InputDecoration(
                    suffix: InkWell(
                        onTap: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        child: Icon(isHidden
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    filled: true,
                    fillColor: const Color(0xFFF7F8F9),
                    hintText: "Enter your password",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFFE8ECF4),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: isChecked,
                            shape: const CircleBorder(),
                            checkColor: Colors.white,
                            fillColor: MaterialStateColor.resolveWith((states) {
                              if (!states.contains(MaterialState.selected)) {
                                return Colors.transparent;
                              }
                              return Colors.black;
                            }),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            }),
                        const Text(
                          "Remember Me",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnBoardingClass()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(331, 56),
                        backgroundColor: const Color(0xFF8D41AC),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )),
                const SizedBox(height: 15),
                const Text(
                  "Or Login With",
                  style: TextStyle(
                      color: Color(0xFF6A707C),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 56,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFE8ECF4))),
                      child: IconButton(
                        icon: Image.asset(
                          'images/facebook.png',
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 56,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFE8ECF4))),
                      child: IconButton(
                        icon: Image.asset(
                          'images/google.png',
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 56,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFE8ECF4))),
                      child: IconButton(
                        icon: Image.asset(
                          'images/twitter.png',
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Color(0xFF8D41AC), fontSize: 13),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const RegisterClass()));
                        },
                        child: const Text(
                          "Register Now",
                          style: TextStyle(
                              color: Color(0xFF8D41AC),
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
