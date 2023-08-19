import 'package:flutter/cupertino.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/common/dart/extension/datetime_extension.dart';
import 'package:toss_app_div/common/widget/w_empty_expanded.dart';
import 'package:toss_app_div/screen/main/tab/stock/search/popular_stock_dummy.dart';
import 'package:toss_app_div/screen/main/tab/stock/search/w_popular_stock_item.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            '인기 검색'.text.bold.make(),
            emptyExpanded,
            '오늘 ${DateTime.now().formattedTime} 기준'.text.size(12).make(),
          ],
        ),
        height20,
        ...popularStocks.mapIndexed((element, index) => PopularStockItem(stock : element,number : index+1)).toList()
      ],
    ).pSymmetric(h: 20);

  }
}
