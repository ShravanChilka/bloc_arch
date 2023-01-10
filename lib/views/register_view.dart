import 'package:bloc_arch/bloc/app_bloc.dart';
import 'package:bloc_arch/bloc/app_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:bloc_arch/extensions/if_debugging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends HookWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController =
        useTextEditingController(text: 'shravan@gmail.com'.ifDebugging);
    final passwordController =
        useTextEditingController(text: '12345678'.ifDebugging);
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(hintText: 'Enter email'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: 'Enter password'),
              obscureText: true,
              obscuringCharacter: '•',
            ),
            TextButton(
                onPressed: () {
                  final email = emailController.text;
                  final password = passwordController.text;
                  context
                      .read<AppBloc>()
                      .add(AppEventRegister(email: email, password: password));
                },
                child: const Text('Register')),
            TextButton(
                onPressed: () {
                  context.read<AppBloc>().add(const AppEventLogOut());
                },
                child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}
