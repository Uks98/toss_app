
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:toss_app_div/screen/main/tab/stock/search/search_stock_data.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({Key? key}) : super(key: key);

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList> with SearchStockDataProvider{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: Obx(()=> ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: searchData.searchHistory.length,
        itemBuilder: (context,index) {
          final stockName = searchData.searchHistory[index];
          return Column(
          children: [
            Tap(onTap: () {
              Nav.push(StockDetail(stockName: stockName));
            },
            child: stockName.text.make()),
            Tap(onTap: () {
              searchData.removeHistory(stockName);
            },
            child: Icon(Icons.close)),
          ],
        ).box.withRounded(value: 6).color(context.appColors.roundedLayoutBackground).p8.make();
        },),)
    );
  }
}
