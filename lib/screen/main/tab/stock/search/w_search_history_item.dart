// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:toss_app_div/screen/main/tab/stock/search/w_search_history_item.dart';
// import 'package:toss_app_div/screen/main/tab/stock/search/w_search_history_stock_list.dart';
//
// class SearchHistoryList extends StatefulWidget {
//   const SearchHistoryList({Key? key}) : super(key: key);
//
//   @override
//   State<SearchHistoryList> createState() => _SearchHistoryListState();
// }
//
// class _SearchHistoryListState extends State<SearchHistoryList> {
//   late final searchHistoryData = Get.find<StockSearchData>();
//
//   get historyList => searchHistoryData.searchHistoryList;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         height: 60,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: historyList.length,
//           itemBuilder: (context, index) {
//             return SearchHistoryItem(
//               onTapDelete: () {
//                 setState(() {
//                   historyList.removeAt(index);
//                 });
//               },
//               text: historyList[index],
//             );
//           },
//         ));
//   }
// }