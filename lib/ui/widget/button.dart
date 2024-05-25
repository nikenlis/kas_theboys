import 'package:flutter/material.dart';
import 'package:the_boys/shared/theme.dart';

class CustomGradienFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  const CustomGradienFilledButton(
      {required this.title,
      this.height = 48,
      this.width = 324,
      this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999),
          gradient: LinearGradient(
              colors: [secondary, gradien],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(999),
          color: Colors.transparent,
          child: InkWell(
            splashColor: secondary50,
            borderRadius: BorderRadius.circular(999),
            onTap: onPressed,
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  child: Text(
                                title,
                                style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: bold),
                              ),
                )),
          ),
        ));
  }
}


class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  final Color color;
  const CustomFilledButton(
      {required this.title,
      this.height = 48,
      this.width = 324,
      this.color = Colors.white10,
      this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999),
          color: color
        ),
        child: Material(
          borderRadius: BorderRadius.circular(999),
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white10,
            borderRadius: BorderRadius.circular(999),
            onTap: onPressed,
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  child: Text(
                                title,
                                style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: bold),
                              ),
                )),
          ),
        ));
  }
}


class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomTextButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 24,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Text(
          title,
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}


class CustomInputButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const CustomInputButton({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white10,
        ),
        child: Center(
          child: Text(
            title,
            style: primaryTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semiBold,
            ),
          ),
        ),
      ),
    );
  }
}


