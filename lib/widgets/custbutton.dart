import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CButton extends StatelessWidget {
  CButton({
    super.key,
    this.colorbackground,
    required this.btnText,
    this.colorText,
  });
  final Color? colorbackground;
  final String? btnText;
  final Color? colorText;
  final List<Map<String, String>> iconns = [
    {'facebook': 'facebook_outlined', 'gmail': 'mail_outline'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorbackground,
        border: Border.all(color: Color(0xffD1D5DB)),
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      height: 38.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(),
          Text(
            btnText!,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: colorText,
            ),
          ),
        ],
      ),
    );
  }
}
