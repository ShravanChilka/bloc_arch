import 'package:bloc_arch/strings.dart' show passwordHint;
import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController passwordController;
  const PasswordTextField({super.key, required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: passwordController,
      decoration: const InputDecoration(hintText: passwordHint),
      obscureText: true,
      obscuringCharacter: '•',
      autocorrect: false,
    );
  }
}
