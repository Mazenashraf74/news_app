import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/SourceDateModel.dart';

class NewsView extends StatelessWidget {
  const NewsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Articles;
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              "News App",
              style: TextStyle(color: Colors.white),
            )),
        backgroundColor: CupertinoColors.white,
        body: Stack(children: [
          Image(image: AssetImage("assets/image/pattern.png")),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: args.urlToImage ?? "",
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    args.source?.name ?? "",
                  ),
                  Text(
                    args.description ?? "",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(args.content ?? "")
                ]),
          )
        ]));
  }
}
