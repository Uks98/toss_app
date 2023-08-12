import 'package:flutter/cupertino.dart';
import 'package:toss_app_div/common/common.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final Color? backGroundColor;

  RoundedContainer({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 15,
    ),
      this.radius = 20.0,
    this.backGroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: backGroundColor ?? context.appColors.buttonBackground,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: child);
  }
}
