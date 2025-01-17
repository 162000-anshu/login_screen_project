import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_pages_project/Forget_Passsword.dart';
import 'package:login_pages_project/Signup_pagepriject.dart';

class SigninPageProject extends StatefulWidget {
  const SigninPageProject({super.key});

  @override
  State<SigninPageProject> createState() => _SigninPageProjectState();
}

class _SigninPageProjectState extends State<SigninPageProject> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: Scaffold(

          backgroundColor: Color(0xffE2E9FC),
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24,top: 30),
                    child: Text(
                        style: GoogleFonts.elsie(
                          fontSize: 36,

                          fontWeight: FontWeight.bold,
                          color: Color(0xff484343),
                        ),
                        "WELCOME \n BACK"),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.mail_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff484343),
                        ),
                        textAlign: TextAlign.center,
                        "Email-ID"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.lock_outline),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff484343),
                            ),
                            textAlign: TextAlign.center,
                            "Password"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TextFormField(controller: TextEditingController(),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetPasssword()),
                    );},
                      child: Text(
                          style: GoogleFonts.roboto(
                            fontSize:20,
                            color: Color(0xffAC0491),
                          ),
                          textAlign: TextAlign.end,
                          "Forget Password?"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  height: 65,
                  width: 218,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Color(0xffAC0491),
                  ),
                  child: MaterialButton(
                    color: Color(0xffAC0491),
                    onPressed: null,
                    child: Text(
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        "Login"),
                  )),
              SizedBox(
                height: 16,
              ),
              Text(
                "Or Sign Up With",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/google_logo_new_icon.svg",
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  SvgPicture.asset(
                    "assets/icons-facebook.svg",
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  SvgPicture.asset(
                    "assets/apple-logo.svg",
                    height: 30,
                    width: 30,
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                      ),
                      "Don’t have an Account? "),
                  InkWell(onTap: (){ Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignupPagepriject.Signup_pageproject()),
                  );},
                    child: Text(
                        style: GoogleFonts.roboto(
                            fontSize: 18, color: Color(0xffAC0491)),
                        "Sign Up"),
                  ),
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}
