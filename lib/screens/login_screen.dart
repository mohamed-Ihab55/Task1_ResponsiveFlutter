import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testsign/constans.dart';
import 'package:testsign/screens/signup_Screen.dart';
import 'package:testsign/widgets/container.dart';
import 'package:testsign/widgets/custbutton.dart';
import 'package:testsign/widgets/or.dart';
import 'package:testsign/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  final String id = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Responsive",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: kMainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(14, 15, 14, 15),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 16),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 85),
                Text(
                  "Sign in to continue",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 37),
            Row(
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 87),
            CTextField(
              hinto: "Enter your email",
              choose: false,
              type: TextInputType.emailAddress,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 89),
            Row(
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 87),
            CTextField(hinto: "Enter your password", choose: true),
            SizedBox(height: MediaQuery.of(context).size.height / 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: kMainColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            CButton(
              colorbackground: kMainColor,
              btnText: "Login with Email",
              colorText: kBasicColor,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Ccontainer(), OR(), Ccontainer()],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            CButton(
              colorbackground: kBasicColor,
              btnText: "Login with gmail",
              colorText: kSmain,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 91),
            CButton(
              colorbackground: kBasicColor,
              btnText: "Login with facebook",
              colorText: kSmain,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: kAccount,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpScreen().id);
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: kMainColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
