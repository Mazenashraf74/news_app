import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/models/SourceDateModel.dart';

import '../config/page_route_name.dart';

class ArticaleListWidget extends StatefulWidget {
  final Articles articles;

  const ArticaleListWidget({super.key, required this.articles});

  @override
  State<ArticaleListWidget> createState() => _ArticaleListWidgetState();
}

class _ArticaleListWidgetState extends State<ArticaleListWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigatorKey.currentState!
            .pushNamed(PageRouteName.newsview, arguments: widget.articles);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: widget.articles.urlToImage ?? "",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                widget.articles.source?.name ?? "",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              ),
            ),
            Text(
              widget.articles.title ?? "",
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                widget.articles.publishedAt ?? "",
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
