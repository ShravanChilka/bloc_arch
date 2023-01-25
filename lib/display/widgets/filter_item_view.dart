import 'package:flutter/material.dart';

class FilterItemView extends StatelessWidget {
  final String title;
  final Function() onTap;
  final bool isSelected;
  const FilterItemView({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: isSelected
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2, color: Colors.black),
                color: Colors.black,
              )
            : BoxDecoration(
                border: Border.all(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 5,
            bottom: 5,
            left: 8,
            right: 8,
          ),
          child: Text(
            title,
            style: isSelected ? const TextStyle(color: Colors.white) : null,
          ),
        ),
      ),
    );
  }
}
