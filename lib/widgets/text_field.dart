import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testsign/constans.dart';

class CTextField extends StatelessWidget {
  const CTextField({super.key, this.hinto,required this.choose,this.type});
  final String? hinto;
  final bool? choose;
  final TextInputType? type;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      obscureText: choose!,
      decoration: InputDecoration(
        hintText: hinto,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Color(0xffADAEBC),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffD1D5DB)),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kMainColor),
        ),
      ),
    );
  }
}
