import 'package:first_ui_project/models/news_item.dart';
import 'package:flutter/material.dart';

class RecommendationItem extends StatelessWidget {
  final NewsItem newsItem;
  const RecommendationItem({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(newsItem.imgUrl, height: 120, width: 150, fit: BoxFit.cover,)),
        const SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(newsItem.category, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black54),),
              const SizedBox(height: 8.0),
              Text(newsItem.title, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8.0),
              Text('${newsItem.author} - ${newsItem.time}', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black54),)
            ],
          ),
        )
      ],
    );
  }
}
