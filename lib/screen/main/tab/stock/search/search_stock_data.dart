

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:toss_app_div/common/util/local_json.dart';

import '../vo_simple_stock.dart';

abstract mixin class SearchStockDataProvider{
  late final searchData = Get.find<SearchStockData>();

}
class SearchStockData extends GetxController{
  List<SimpleStock> stocks = []; //json 데이터
  RxList<String> searchHistory = <String>[].obs; //검색할 시 가로로 나오는 히스토리
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs; //자동완성 리스트

//컨트롤러 생성시 자동 호출
@override
  void onInit() {
  searchHistory.addAll(['삼성전자',"LG전자","현대차","넷플릭스"]);
  loadLocalStockJson();
    // TODO: implement onInit
    super.onInit();
  }
  Future<void> loadLocalStockJson()async{
  final jsonList = await LocalJson.getObjectList<SimpleStock>("stock_list.json");
  stocks.addAll(jsonList);
  }
  void search(String keyword){
  if(keyword.isEmpty){
    autoCompleteList.clear();
    return;
  }
  autoCompleteList.value = stocks.where((element) => element.name.contains(keyword)).toList();
}
  void addHistory(SimpleStock stock){
    searchHistory.add(stock.name);
  }
  void removeHistory(String stockName){
  searchHistory.remove(stockName);
  }

}