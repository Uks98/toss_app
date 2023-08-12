import 'package:flutter/material.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/common/widget/w_rounded_container.dart';
import 'package:toss_app_div/common/widget/w_tap.dart';

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  BigButton(this.text,{required this.onTap,Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: onTap,
      child: RoundedContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text.text.white.size(20).bold.make(),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 16,)
          ],
        ),
      ),
    );
  }
}
