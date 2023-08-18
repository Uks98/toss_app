import 'dart:ui';

import 'package:flutter/src/widgets/framework.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/screen/main/tab/stock/vo_popular_stock.dart';

class Stock extends PopularStock{
  final String stockImagePath;

  Stock({required this.stockImagePath,required super.yesterdayClosePrice, required super.currentPrice, required super.stockName});


}