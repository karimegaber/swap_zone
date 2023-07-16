import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void showToast({
  required BuildContext context,
  required String message,
}) {
  ToastContext().init(context);
  Toast.show(
    message,
    duration: Toast.lengthLong,
    gravity: Toast.bottom,
  );
}
