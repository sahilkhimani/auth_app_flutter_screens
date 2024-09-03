import 'package:authentication_app/login.dart';
import 'package:authentication_app/on_boarding_page.dart';
import 'package:flutter/material.dart';

class RegisterClass extends StatefulWidget {
  const RegisterClass({super.key});

  @override
  State<RegisterClass> createState() => _RegisterClassState();
}

class _RegisterClassState extends State<RegisterClass> {
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
                      text: "Hello!",
                      style: TextStyle(
                          fontSize: 28,
                          color: Color(0xFF8D41AC),
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " Register to get started",
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
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)))),
                ),
                const SizedBox(height: 15),
                const TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF7F8F9),
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Color(0xFFE8ECF4)))),
                ),
                const SizedBox(height: 15),
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
                    hintText: "Password",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFFE8ECF4),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
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
                    hintText: "Confirm password",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFFE8ECF4),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                      "Register",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    )),
                const SizedBox(height: 15),
                const Text(
                  "Or Register With",
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
                      "Already have an account?",
                      style: TextStyle(color: Color(0xFF8D41AC), fontSize: 13),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const LoginClass()));
                        },
                        child: const Text(
                          "Login Now",
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
