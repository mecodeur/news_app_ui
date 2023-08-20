import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {

  final String title;
  const HomeTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Breanking News',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        TextButton(onPressed: () {}, child: const Text('View All')),
      ],
    );
  }
}
