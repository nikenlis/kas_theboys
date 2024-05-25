import 'package:flutter/material.dart';
import 'package:the_boys/shared/theme.dart';
//import 'package:intl/intl.dart';
import 'package:another_flushbar/flushbar.dart';

void showCustomSnackbar(BuildContext context, String message) {
  Flushbar(
    message : message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: secondary,
    duration: const Duration(seconds: 2),
    borderRadius: BorderRadius.circular(24),
    padding: const EdgeInsets.all(15)
  ).show(context);
}