import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_pages_project/Signin_page_project.dart';

class SignupPagepriject extends StatefulWidget {
  const SignupPagepriject.Signup_pageproject({super.key});

  @override
  State<SignupPagepriject> createState() => _SignupPageprijectState();
}

class _SignupPageprijectState extends State<SignupPagepriject> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SIGN UP",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 3)),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.asset("assets/user.png",fit: BoxFit.fill,height: 100,width: 100,),
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
                        fontWeight: FontWeight.bold,
                        color: Color(0xff484343),
                      ),
                      textAlign: TextAlign.center,
                      "Email"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
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
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.supervised_user_circle_outlined),
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
                      "USERNAME"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
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
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.password),
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
                      "PASSWORD"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
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
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.password),
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
                      "CONFIRM PASSWORD"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
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
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_box_outlined),
                SizedBox(
                  width: 10,
                ),
                Text("I accept the PrivacyPolicy and Terms."),
              ],
            ),
            InkWell(onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SigninPageProject()),
            );},
              child: Container(
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
                          color: Colors.white,
                        ),
                        "SignUp"),
                  )),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    style: GoogleFonts.roboto(fontSize: 16),
                    "Already have an Account? "),
                InkWell(onTap: (){ Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SigninPageProject()),
                );},
                  child: Text(
                      style: GoogleFonts.roboto(
                          fontSize: 16, color: Color(0xffAC0491)),
                      "Login"),
                ),
              ],
            ),
          ],
        ),
      
      ),
    );
  }
}
