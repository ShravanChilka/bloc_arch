import 'package:bloc_arch/auth/auth_error.dart';
import 'package:flutter/material.dart' show BuildContext;
import 'generic_dialog.dart';

Future<bool> showErrorDialog({
  required AuthError authError,
  required BuildContext context,
}) {
  return showGenericDialog<bool>(
    context: context,
    title: authError.dialogTitle,
    content: authError.dialogContent,
    optionBuilder: () => {
      'Dismiss': true,
    },
  ).then((value) => value ?? false);
}
