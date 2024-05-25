import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_boys/shared/theme.dart';
import 'package:the_boys/ui/widget/button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: grey,
      body: Stack(
        children: [
          Image.asset(
            "assets/img/welcome_screen.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            children: [
              Container(
                width: 178,
                height: 29,
                margin: const EdgeInsets.only(top: 60, bottom: 501),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/app_logo.png"))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'Congue malesuada in ac justo, a tristique leo massa. Arcu leo leo urna risus.',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: regular),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomGradienFilledButton(
                title: 'Get started',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/sign-up', (route) => false);
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomFilledButton(title: 'I have an account', onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
              },)
            ],
          )
        ],
      ),
    );
  }
}
