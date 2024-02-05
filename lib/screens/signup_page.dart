import 'package:brainburst/screens/login_page.dart';
import 'package:brainburst/screens/reward_pages/badge_earn.dart';
import 'package:brainburst/screens/reward_pages/correct_excellent_page.dart';
import 'package:brainburst/screens/reward_pages/try_again.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFFA99C8),

      body: SafeArea(
        child: SizedBox(
          width: 393,
          height: 852,
          child: Column(
            children: [
              SizedBox(
                width: 513,
                height: 312,
                child: Image.asset('assets/login_page_image.png'),
              ),
              Expanded(
                child: Container(
                  width: 393,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.47, -0.88),
                      end: Alignment(-0.47, 0.88),
                      colors: [Color(0xFFF999C7), Color(0x00F999C7)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 45),
                          child: const Text(
                            'Welcome Aboard !!!',
                            style: TextStyle(
                              color: Color(0xFF1A524E),
                              fontSize: 36,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          width: 344,
                          height: 55,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 2, color: Color(0xCC1A524E)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person),
                                hintText: "Enter your username",
                                hintStyle: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.6499999761581421),
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 344,
                          height: 55,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 2, color: Color(0xCC1A524E)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email),
                                hintText: "Enter your Email",
                                hintStyle: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.6499999761581421),
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 344,
                          height: 55,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 2, color: Color(0xCC1A524E)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock_open),
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove_red_eye)),
                                hintText: "Enter your password",
                                hintStyle: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.6499999761581421),
                                  fontSize: 15,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40, bottom: 20),
                          width: 344,
                          height: 63,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF1A524E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: MaterialButton(
                            onPressed: () => {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>const TryAgain()))  
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  bottom: 15, top: 15, left: 0, right: 0),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const LoginPage())));
                          },
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Already have an account?',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                const TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                                const TextSpan(
                                  text: 'Log In',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
