import 'package:flutter/material.dart';
import 'package:untitled/widget/artical_list_widget.dart';
import 'package:untitled/widget/tab_bar_custom.dart';

import '../network/soures_model.dart';

class NewsListWidget extends StatefulWidget {
  final List<SouresModel> sourceslis;

  const NewsListWidget({super.key, required this.sourceslis});

  @override
  State<NewsListWidget> createState() => _NewsListWidgetState();
}

class _NewsListWidgetState extends State<NewsListWidget> {
  var selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: widget.sourceslis.length,
          initialIndex: selectedindex,
          child: TabBar(
            onTap: (value) {
              selectedindex = value;
              setState(() {});
            },
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            indicator: BoxDecoration(),
            dividerColor: Colors.transparent,
            isScrollable: true,
            tabs: widget.sourceslis
                .map((e) => TabBarWidget(
                      souresModel: e,
                      isselected: selectedindex == widget.sourceslis.indexOf(e),
                    ))
                .toList(),
          ),
        ),
        ArticalWidget(souresid: widget.sourceslis[selectedindex].id)
      ],
    );
  }
}
