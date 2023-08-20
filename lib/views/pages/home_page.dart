import 'package:first_ui_project/views/pages/news_details_page.dart';
import 'package:first_ui_project/views/widgets/app_bar_icon.dart';
import 'package:first_ui_project/views/widgets/custom_carousel_slider.dart';
import 'package:first_ui_project/views/widgets/recommendation_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/news_item.dart';
import '../widgets/home_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16.0),
                const HomeTitle(title: 'Breaking News'),
                const SizedBox(height: 8.0),
                const CustomCarouselSlider(),
                const SizedBox(height: 16.0),
                const HomeTitle(title: 'Recommendation'),
                const SizedBox(height: 8.0),
                ...news
                    .map((item) => Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: InkWell(
                              onTap: (){
                                Navigator.of(context, rootNavigator: true).push(CupertinoPageRoute(builder: (_)=>NewsDetailsPage(newsItem: item)));
                              },
                              child: RecommendationItem(newsItem: item)),
                        ))
                    .toList(),

                /*
                Méthode 1:
                ...news.map((item) => RecommendationItem(newsItem: item)).toList(),

                Méthode 2:
                ListView.builder(
                  // I added physics: NeverScrollableScrollPhysics() to the ListView.builder to disable
                  // scrolling within the ListView.
                  // This prevents conflicts between the outer SingleChildScrollView and the inner ListView.
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: news.length,
                  itemBuilder: (BuildContext context, int index) {
                  return RecommendationItem(newsItem: news[index]);
                },), */
              ],
            ),
          ),
        ),
      );

  }
}
