import 'package:bloc_arch/data/models/genre.dart';
import 'package:flutter/material.dart';
import '../../widgets/filter_item_view.dart';

class GenresListView extends StatelessWidget {
  final Function(int index) onSelected;
  final List<Genre> genres;
  const GenresListView({
    Key? key,
    required this.onSelected,
    required this.genres,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => FilterItemView(
          title: genres[index].name,
          onTap: () => onSelected(index),
          isSelected: genres[index].isSelected,
        ),
      ),
    );
  }
}
