import 'package:flutter/cupertino.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/common/widget/w_empty_expanded.dart';
import 'package:toss_app_div/screen/main/tab/stock/vo_popular_stock.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int number;
  const PopularStockItem({Key? key,required this.stock,required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 40,
            child: number.text.make()), width30,stock.name.text.make(), emptyExpanded, stock.todayPercentageString.text.color(stock.getPriceColor(context)).make()
      ],
    ).pSymmetric(v:25);
  }
}
