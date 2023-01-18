import 'package:bloc_arch/repository/service/api_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String data = 'NA';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () => getData(context),
                      child: const Text('Get Data')),
                  Text(data),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> getData(BuildContext context) async {
    final ApiService apiService =
        ApiService(client: http.Client(), baseUrl: 'https://api.rawg.io/api');
    final response = await apiService.getAllGamesList();
    setState(() {
      data = response.toString();
    });
  }
}
