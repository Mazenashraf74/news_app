import 'package:flutter/material.dart';
import 'package:untitled/network/api_manger.dart';
import 'package:untitled/widget/Categoris_model.dart';
import 'package:untitled/widget/news_list.dart';

class CategoriView extends StatefulWidget {
  final CategorisModel categorisModel;

  const CategoriView({
    super.key,
    required this.categorisModel,
  });

  @override
  State<CategoriView> createState() => _CategoriViewState();
}

class _CategoriViewState extends State<CategoriView> {
  var selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    ApiManger.fetchDateSoures(widget.categorisModel.id);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          const Image(image: AssetImage("assets/image/pattern.png")),
          FutureBuilder(
              future: ApiManger.fetchDateSoures(widget.categorisModel.id),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text(
                      "somthing wrong",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  );
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                var sourceslis = snapshot.data ?? [];
                return NewsListWidget(sourceslis: sourceslis);
              })
        ]));
  }
}
