import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_pages_project/Signin_page_project.dart';

class ForgetPasssword extends StatefulWidget {
  const ForgetPasssword({super.key});

  @override
  State<ForgetPasssword> createState() => _forget_passwordState();
}

class _forget_passwordState extends State<ForgetPasssword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(

        height: MediaQuery.of(context).size.height,
        color: Color(0xffE2E9FC),
        child: Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height,
                color: Color(0xffE2E9FC),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                        style: GoogleFonts.roboto(
                          fontSize: 28,
                          color: Color(0xff484343),
                        ),
                        "Reset Password"),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset("assets/Ellipse 4.png"),
                        Image.asset("assets/lock icon.png")
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(36.0),
                      child: Text(
                          style: TextStyle(),
                          textAlign: TextAlign.center,
                          "Enter the Email associated with your acoount to receive a verification code"),
                    ),

                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.email_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color: Color(0xff484343),
                                  ),
                                  textAlign: TextAlign.center,
                                  "Enter Your Email:-"),
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
                      ],
                    ),

                    Text(
                        style: GoogleFonts.roboto(
                            fontSize: 16, color: Color(0xffAC0491)),
                        "Try another way"),
                    InkWell(
                      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninPageProject()),);},
                      child: Container(
                          height: 60,
                          width: 190,
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
                                  color: Colors.white,
                                ),
                                "Send"),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
