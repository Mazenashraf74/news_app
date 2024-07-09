import 'package:flutter/material.dart';

import '../config/constant_page.dart';

class CustomeDrawer extends StatelessWidget {
  Function onTapDrawerCat;

  CustomeDrawer({super.key, required this.onTapDrawerCat});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constant.mediaquery.size.width * 0.8,
      height: Constant.mediaquery.size.height,
      color: Colors.white,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: Constant.mediaquery.size.width,
              height: Constant.mediaquery.size.height * 0.18,
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text(
                "News App!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ),
            InkWell(
              onTap: () {
                onTapDrawerCat();
              },
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    Icon(Icons.list_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Categores",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.only(left: 10, bottom: 5),
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
