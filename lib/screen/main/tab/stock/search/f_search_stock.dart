import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_app_div/screen/main/tab/stock/search/s_search_history_stock_list.dart';
import 'package:toss_app_div/screen/main/tab/stock/search/w_stock_search_app_bar.dart';

class SearchStockFragment extends StatefulWidget {
  const SearchStockFragment({Key? key}) : super(key: key);

  @override
  State<SearchStockFragment> createState() => _SearchStockFragmentState();
}

class _SearchStockFragmentState extends State<SearchStockFragment> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: StockSearchAppBar(
        controller: controller,),
      body: ListView(
        children: [
          SearchHistoryStockList(),
          PopularSearchStockList()
        ],
      ),
    );
  }
}
