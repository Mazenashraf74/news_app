import 'package:flutter/material.dart';
import 'package:untitled/config/constant_page.dart';
import 'package:untitled/network/soures_model.dart';

class TabBarWidget extends StatelessWidget {
  final SouresModel souresModel;
  final bool isselected;

  const TabBarWidget(
      {super.key, required this.souresModel, required this.isselected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: isselected ? Constant.color : Colors.transparent,
          border: Border.all(
            color: Constant.color,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30)),
      child: Text(
        souresModel.name,
        style: TextStyle(
            color: isselected ? Colors.white : Constant.color,
            fontSize: 20,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
