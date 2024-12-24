import 'package:flutter/material.dart';
import 'package:login_page/signin.dart';
import 'package:login_page/signup.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(top: 10.0),
        height: MediaQuery.of(context)
            .size
            .height, //mediaQuery for resposive & Adaptive Ui
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffb51837),
          Color(0xff661c3a),
          Color(0xff301939)
        ], begin: Alignment.topLeft, end: Alignment.topRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/Dumbell.png",
              color: Colors.white,
              height: 90,
              width: 90,
              fit: BoxFit.cover,
            ),
            const Text(
              "FITNESS HUB",
              style: TextStyle(color: Colors.white, fontSize: 30.0,fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 60.0),
            const Text(
              "WELCOME BACK",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
          GestureDetector(
            onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));

            },
              child: Container(
                padding: EdgeInsets.only(
                  top: 5.0,
                  bottom: 8.0,
                ),
                margin: EdgeInsets.only(left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white60, width: 2.0),
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                  child: Text(
                    "SIGN IN ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));

              },
              child: Container(
                padding: EdgeInsets.only(
                  top: 5.0,
                  bottom: 8.0,
                ),
                margin: EdgeInsets.only(left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(30)),
                child: const Center(
                  child: Text(
                    "SIGN UP ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/8,),//important
            Text(
              "Login With Social Media",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Image.asset(
                      "images/Google.png",
                      height: 40,
                      width: 40,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Image.asset(
                      "images/Instagram.png",
                      height: 40,
                      width: 40,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    
                    child: Image.asset(
                      "images/Facebook.png",
                      height: 40,
                      width: 40,
                      // fit: BoxFit.cover,
                    ),
                  ),                             
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
