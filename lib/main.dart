import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testsign/screens/login_screen.dart';
import 'package:testsign/screens/signup_Screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(ResponsiveTest());
}

class ResponsiveTest extends StatelessWidget {
  const ResponsiveTest({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          routes: {
            SignUpScreen().id: (context) => SignUpScreen(),
            LoginScreen().id: (context) => LoginScreen(),
          },
          debugShowCheckedModeBanner: false,
          initialRoute: LoginScreen().id,
        );
      },
    );
  }
}
