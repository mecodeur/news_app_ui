import 'package:first_ui_project/models/news_item.dart';
import 'package:flutter/material.dart';

import '../widgets/news_details_appbar.dart';
import 'news_details_body.dart';

class NewsDetailsPage extends StatelessWidget {
  final NewsItem newsItem;

  const NewsDetailsPage({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: CustomScrollView(
              slivers: [
                NewsDetailsAppBar(newsItem: newsItem),
                SliverToBoxAdapter(
                  child: Container(
                      color: Colors.white,
                      child: NewsDetailsBody(newsItem: newsItem)),),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              child: SizedBox(
                width: size.width,
                height: size.height * 0.25,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.white,
                          Colors.white.withOpacity(0),
                        ]),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
