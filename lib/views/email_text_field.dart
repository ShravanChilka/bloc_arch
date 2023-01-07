import 'package:bloc_arch/strings.dart' show emailHint;
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController emailController;
  const EmailTextField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: emailController,
      decoration: const InputDecoration(hintText: emailHint),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
    );
  }
}
