import 'package:flutter/cupertino.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/common/constant/app_colors.dart';
import 'package:toss_app_div/screen/main/tab/benefit/vo_benefit.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;
  const BenefitItem({Key? key,required this.benefit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.asset(benefit.imagePath,width: 50,height: 50,),
        width10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.subTitle.text.make(),
            height5,
            benefit.title.text.color(context.appColors.blueText).make(),
          ],
        ).pSymmetric(v: 20)
      ],
    );
  }
}
