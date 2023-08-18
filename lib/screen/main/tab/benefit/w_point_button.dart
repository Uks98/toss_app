import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/common/widget/w_empty_expanded.dart';

class PointButton extends StatelessWidget {
  final int point;
  const PointButton({Key? key,required this.point}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        "내 포인트".text.color(context.appColors.lessImportant).make(),
        emptyExpanded,
        "$point 원".text.bold.make(),
        width10,
         Icon(Icons.arrow_forward_ios,color: context.appColors.lessImportant,size: 20,),
      ],
    ).pSymmetric(h: 20);
  }
}
