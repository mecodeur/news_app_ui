import 'package:first_ui_project/models/news_item.dart';
import 'package:flutter/material.dart';

class NewsDetailsBody extends StatelessWidget {
  final NewsItem newsItem;

  const NewsDetailsBody({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(newsItem.imgUrl),
              ),
              const SizedBox(width: 10.0),
              Text(
                newsItem.author,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ha Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ha Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ha Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ha Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ha Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ha Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ha Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ha Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ha Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ha Lorem Ipsum haIpsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }
}
