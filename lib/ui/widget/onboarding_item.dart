import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:the_boys/shared/theme.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey80,
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Never miss a payment! \n Get automatic reminders for your monthly dues.',
            style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 331,
            child: Lottie.network(
                'https://lottie.host/63a03012-b720-43aa-87d7-a0726d400af9/oIm9Jepsun.json'),
          )
        ],
      ),
    );
  }
}

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey80,
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Track all your transactions \n View detailed reports of collected and spent money.',
            style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
            textAlign: TextAlign.center,
          ),

          SizedBox(
            height: 331,
            child: Lottie.network(
                'https://lottie.host/432fa236-d706-497b-a6ce-45593bc4c00e/sEOvxo8mHu.json'),
          )
        ],
      ),
    );
  }
}

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey80,
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Join us and manage your finances more better',
            style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 331,
            child: Lottie.network(
                'https://lottie.host/1224fdb0-f195-484a-a2d7-a587b65e6594/68UW8jdzJe.json'),
          )
        ],
      ),
    );
  }
}
