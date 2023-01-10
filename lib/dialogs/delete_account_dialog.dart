import 'package:flutter/material.dart' show BuildContext;
import 'generic_dialog.dart';

Future<bool> showDeleteAccountDialog({
  required BuildContext context,
}) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Delete Account',
    content: 'Are you sure you want to delete this account?',
    optionBuilder: () => {
      'Cancel': false,
      'Delete Account': true,
    },
  ).then((value) => value ?? false);
}
