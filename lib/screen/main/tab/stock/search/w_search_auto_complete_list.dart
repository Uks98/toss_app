import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:toss_app_div/common/common.dart';
import 'package:toss_app_div/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:toss_app_div/screen/main/tab/stock/search/search_stock_data.dart';

class SearchAutoCompleteList extends StatelessWidget with SearchStockDataProvider{
  final TextEditingController controller;
   SearchAutoCompleteList(this.controller,{Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      final stock = searchData.autoCompleteList[index];
      final stockName = stock.name;
      return Tap(onTap: (){
      controller.clear();
      searchData.addHistory(stock);
      Nav.push(StockDetail( stockName: stockName,));

      }, child: stockName.text.make().p(20));
    },itemCount: searchData.autoCompleteList.length,);
  }
}
