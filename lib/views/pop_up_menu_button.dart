import 'package:bloc_arch/bloc/app_bloc.dart';
import 'package:bloc_arch/bloc/app_event.dart';
import 'package:bloc_arch/dialogs/delete_account_dialog.dart';
import 'package:bloc_arch/dialogs/logout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum MenuAction { logOut, deleteAccount }

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuAction>(
      onSelected: (value) async {
        switch (value) {
          case MenuAction.logOut:
            await showLogOutDialog(context: context).then((shouldLogOut) {
              if (shouldLogOut) {
                context.read<AppBloc>().add(const AppEventLogOut());
              }
            });
            break;
          case MenuAction.deleteAccount:
            await showDeleteAccountDialog(context: context)
                .then((shouldDeleteAccount) {
              if (shouldDeleteAccount) {
                context.read<AppBloc>().add(const AppEventDeleteAccount());
              }
            });
        }
      },
      itemBuilder: (context) {
        return const [
          PopupMenuItem<MenuAction>(
            value: MenuAction.logOut,
            child: Text('Log out'),
          ),
          PopupMenuItem<MenuAction>(
            value: MenuAction.deleteAccount,
            child: Text('Delete Account'),
          ),
        ];
      },
    );
  }
}
