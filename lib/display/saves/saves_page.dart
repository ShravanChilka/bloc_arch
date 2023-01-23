import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../data/models/game.dart';

class SavesPage extends StatefulWidget {
  const SavesPage({Key? key}) : super(key: key);

  @override
  State<SavesPage> createState() => _SavesPageState();
}

class _SavesPageState extends State<SavesPage> {
  final Client client = Client();
  List<Game> games = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        child: const Text('Saves'),
        onPressed: () => getAllGames(),
      )),
    );
  }

  void getAllGames() async {
    final response = await client.get(
      Uri.http(
        'api.rawg.io',
        'api/games',
        {'key': '8e8a495937344bf8a352a46800a34076'},
      ),
    );
    if (response.statusCode == 200 && response.body.isNotEmpty) {
      final result = GameResult.fromJson(response.body);
      if (result != null) {
        log(result.games.length.toString());
      }
    }
  }
}
