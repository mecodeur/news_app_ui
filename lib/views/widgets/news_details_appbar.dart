import 'package:first_ui_project/models/news_item.dart';
import 'package:first_ui_project/views/pages/home_page.dart';
import 'package:first_ui_project/views/widgets/app_bar_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsDetailsAppBar extends StatelessWidget {
  final NewsItem newsItem;

  const NewsDetailsAppBar({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverAppBar(
      expandedHeight: size.height * 0.4,
      leading: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: AppBarIcon(
            icon: Icons.chevron_left,
            iconSize: 30,
          ),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      leadingWidth: 40.0,
      actions: const [
        AppBarIcon(icon: Icons.bookmark_add_outlined),
        SizedBox(
          width: 8.0,
        ),
        AppBarIcon(icon: Icons.menu),
        SizedBox(
          width: 8.0,
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                newsItem.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                bottom: 50,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(newsItem.category,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18.0)),
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    SizedBox(
                        width: size.width * 0.9,
                        child: Text(
                          newsItem.title,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                          maxLines: 3,
                        )),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      '${newsItem.author} - ${newsItem.time}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                )),
          ],
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      pinned: true,
      //collapsedHeight: size.height * 0.1,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: SizedBox(
          height: 30,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(36.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
