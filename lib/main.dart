import 'package:flutter/material.dart';
import 'package:the_boys/shared/theme.dart';
import 'package:the_boys/ui/widget/pages/home_page.dart';
import 'package:the_boys/ui/widget/pages/onboarding_page.dart';
import 'package:the_boys/ui/widget/pages/sign_in_page.dart';
import 'package:the_boys/ui/widget/pages/sign_up_page.dart';
import 'package:the_boys/ui/widget/pages/sign_up_success_page.dart';
import 'package:the_boys/ui/widget/pages/splash_page.dart';
import 'package:the_boys/ui/widget/pages/welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
                theme: ThemeData(
            scaffoldBackgroundColor: grey,
            appBarTheme: AppBarTheme(
              backgroundColor: grey,
              elevation: 0,
              centerTitle: true,
              iconTheme: const IconThemeData(
                //color: blackColor,
              ),
              titleTextStyle: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/welcome' : (context) => const WelcomePage(),
        '/sign-in' : (context) => const SignInPage(),
        '/sign-up' : (context) => const SignUpPage(),
        '/sign-up-success' :(context) => const SignUpSuccessPage(),
        '/home' :(context) => const HomePage(),
      },
    );
  }
}
