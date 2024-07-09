import 'package:flutter/material.dart';
import 'package:untitled/network/api_manger.dart';
import 'package:untitled/widget/article_item_widget.dart';

class ArticalWidget extends StatelessWidget {
  final String souresid;

  const ArticalWidget({super.key, required this.souresid});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManger.fetchArtical(souresid),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text(
                "somthing wrong",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          var articallist = snapshot.data ?? [];

          return Expanded(
              child: ListView.builder(
                  itemCount: articallist.length,
                  itemBuilder: (context, index) => ArticaleListWidget(
                        articles: articallist[index],
                      )));
        });
  }
}
