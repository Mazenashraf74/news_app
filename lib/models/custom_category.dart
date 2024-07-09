import 'package:flutter/material.dart';
import 'package:untitled/widget/Categoris_model.dart';

class CustomCategoris extends StatelessWidget {
  final int index;
  final CategorisModel categorisModel;
  final Function? onCategoriClicked;

  const CustomCategoris(
      {super.key,
      required this.index,
      required this.categorisModel,
      this.onCategoriClicked});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onCategoriClicked == null) return;
        onCategoriClicked!(categorisModel);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(25),
                topRight: const Radius.circular(25),
                bottomRight:
                    index % 2 == 0 ? Radius.circular(0) : Radius.circular(25),
                bottomLeft:
                    index % 2 == 0 ? Radius.circular(25) : Radius.circular(0)),
            color: categorisModel.backgroundcolor),
        child: Column(
          children: [
            Image.asset(
              categorisModel.image,
              fit: BoxFit.fill,
            ),
            Text(
              categorisModel.titel,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
