
import 'package:flutter/material.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/screen/main/tab/benefit/w_point_button.dart';

import '../../../../common/widget/w_height_and_width.dart';
import '../../s_main.dart';
import 'benefit_item.dart';
import 'benefits_dummy.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({Key? key}) : super(key: key);

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: MainScreenState.bottomNavigatorHeight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height30,
          "혜택".text.white.bold.size(18).make(),
          height30,
          const PointButton(
            point: 569,
          ),
          height20,
          "혜택 더 받기".text.white.bold.size(16).make(),
          ...benefitList.map((element) => BenefitItem(benefit: element)).toList(),
        ],
      ).pSymmetric(h: 20),
    );
  }
}
