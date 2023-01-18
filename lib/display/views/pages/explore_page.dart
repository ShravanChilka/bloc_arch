import 'package:flutter/material.dart';
import 'package:bloc_arch/data/repository_impl/games_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/errors/failures.dart';
import '../../../data/models/models_export.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  String data = 'NA';

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }

  Future<void> getData(BuildContext context) async {
    final result = await context.read<GamesRepositoryImpl>().getAllTags();
    result.fold((Failure failure) {
      setState(() {
        data = failure.errorMessage.toString();
      });
    }, (response) {
      setState(() {
        data = response.toString();
      });
    });
  }
}
