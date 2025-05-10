import 'package:flutter/material.dart';

enum SnackBarStatus { failure, success }

void showSnackBar(BuildContext context, String message, SnackBarStatus status) {
  Color backgroundColor =
      status == SnackBarStatus.success ? Colors.green : Colors.red;

  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message), backgroundColor: backgroundColor),
  );
}
