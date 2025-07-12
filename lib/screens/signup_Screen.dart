import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testsign/constans.dart';
import 'package:testsign/widgets/container.dart';
import 'package:testsign/widgets/custbutton.dart';
import 'package:testsign/widgets/or.dart';
import 'package:testsign/widgets/text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  final String id = 'signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Account",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(14, 16, 14, 16),
        child: ListView(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 45),
            Text(
              "Welcome Back!",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 85),
            Text(
              "Sign up to get started with our service",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            CTextField(
              hinto: "Email",
              choose: false,
              type: TextInputType.emailAddress,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 89),
            CTextField(hinto: "Password", choose: true),
            SizedBox(height: MediaQuery.of(context).size.height / 89),
            CTextField(hinto: "Confirm Password", choose: true),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            CButton(
              colorbackground: kMainColor,
              btnText: "Create Account",
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
            SizedBox(height: MediaQuery.of(context).size.height / 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Aleardy have an account? ",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: kAccount,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Sign in",
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
