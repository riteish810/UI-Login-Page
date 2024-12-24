import 'package:flutter/material.dart';
import 'package:login_page/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Hello\nSign In!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
                child: Container(
                    padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,

                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Email",
                            style: TextStyle(
                                color: Color(0xffb51837),
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                hintText: "Enter Email",
                                suffixIcon: Icon(Icons.email_outlined)),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text(
                            "Password",
                            style: TextStyle(
                                color: Color(0xffb51837),
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                hintText: "Enter Password",
                                suffixIcon: Icon(Icons.remove_red_eye)),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Forget Password? ",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 4, 72, 129),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            height: 50,
                            // padding: EdgeInsets.only(left: 140,right: 20),
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffb51837),
                                      Color(0xff661c3a),
                                      Color(0xff301939)
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight),
                                borderRadius: BorderRadius.circular(30)),
                            width: MediaQuery.of(context).size.width,
                            child: const Center(
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    "Don't Have Account?",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                 GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                                  },
                                    child: const Text(
                                      "SIGN UP",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 4, 72, 129),
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ])))
          ],
        ),
      ),
    );
  }
}
