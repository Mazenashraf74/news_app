import 'package:flutter/material.dart';
import 'package:untitled/config/applecation_theme.dart';
import 'package:untitled/main.dart';
import 'package:untitled/models/custom_category.dart';
import 'package:untitled/pages/home/pages/categori_view.dart';

import '../../../widget/Categoris_model.dart';
import '../../../widget/custom_drawer..dart';

class Homeview extends StatefulWidget {
  Homeview({
    super.key,
  });

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  final List<CategorisModel> Categorylist = [
    CategorisModel("sports", "sports", "assets/image/sports.png", Colors.red),
    CategorisModel(
        "general", "politics", "assets/image/Politics.png", Color(0xFF003E90)),
    CategorisModel(
        "health", "health", "assets/image/health.png", Color(0xFFED1E79)),
    CategorisModel(
        "business", "business", "assets/image/bussines.png", Color(0xFFCF7E48)),
    CategorisModel("technology", "Environment", "assets/image/environment.png",
        Color(0xFF4882CF)),
    CategorisModel(
        "science", "science", "assets/image/science.png", Color(0xFFF2D352)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            selectedcat == null ? "News App" : selectedcat!.titel,
            style: TextStyle(color: Colors.white),
          ),
        ),
        drawer: CustomeDrawer(onTapDrawerCat: onTapDrawerCat),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            const Image(image: AssetImage("assets/image/pattern.png")),
            selectedcat == null
                ? Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          "pick your category\nof interst",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: ApplecationManger.primrydarkcolor),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: GridView.builder(
                              padding: EdgeInsets.all(25),
                              itemCount: 6,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 4 / 5,
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) => CustomCategoris(
                                    index: index,
                                    categorisModel: Categorylist[index],
                                    onCategoriClicked: onCategoriClicked,
                                  )),
                        )
                      ],
                    ),
                  )
                : CategoriView(
                    categorisModel: selectedcat!,
                  )
          ],
        ));
  }

  CategorisModel? selectedcat;

  onCategoriClicked(CategorisModel categorisModel) {
    setState(() {
      selectedcat = categorisModel;
    });
  }

  onTapDrawerCat() {
    setState(() {});
    selectedcat = null;
    navigatorKey.currentState!.pop();
  }
}
