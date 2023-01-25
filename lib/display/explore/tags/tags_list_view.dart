import 'package:bloc_arch/data/models/tag.dart';
import 'package:flutter/material.dart';
import '../../widgets/filter_item_view.dart';

class TagsListView extends StatelessWidget {
  final Function(int index) onSelected;
  final List<Tag> tags;
  const TagsListView({
    Key? key,
    required this.onSelected,
    required this.tags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tags.length,
        itemBuilder: (context, index) => FilterItemView(
          title: tags[index].name,
          onTap: () => onSelected(index),
          isSelected: tags[index].isSelected,
        ),
      ),
    );
  }
}
