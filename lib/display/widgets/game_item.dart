import 'package:flutter/material.dart';

class GameItem extends StatelessWidget {
  final String? backgroundImage;
  final String name;
  final double? rating;
  const GameItem({
    Key? key,
    required this.backgroundImage,
    required this.name,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      child: Ink(
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: backgroundImage != null
                ? DecorationImage(
                    image: Image.network(backgroundImage!).image,
                    fit: BoxFit.fitHeight)
                : null),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 10, top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  rating != null
                      ? Text(rating!.toStringAsFixed(2))
                      : const SizedBox.shrink()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
