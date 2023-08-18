import 'package:flutter/cupertino.dart';
import 'package:toss_app_div/common/common.dart';

abstract mixin class StockPercentageDataProvider{
  int get currentPrice;
  int get yesterdayClosePrice;

  double get todayPercentage => ((currentPrice - yesterdayClosePrice)/yesterdayClosePrice * 100);

  String get todayPercentageString => "$symbol$todayPercentage%";

  bool get isPlus => currentPrice > yesterdayClosePrice;
  bool get isSame => currentPrice == yesterdayClosePrice;
  bool get isMinus => currentPrice < yesterdayClosePrice;
  String get symbol => isSame ? "" : isPlus ? "+" : "-";
  Color getPriceColor
      (BuildContext context) => isSame? context.appColors.lessImportant : isPlus ? context.appColors.plus : context.appColors.minus;
//Color? getTodayPercentageColor(BuildContext context) {}
}