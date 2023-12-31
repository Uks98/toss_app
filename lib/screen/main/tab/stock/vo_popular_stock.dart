import 'package:toss_app_div/screen/main/tab/stock/stock_percentage_data_provider.dart';
import 'package:toss_app_div/screen/main/tab/stock/vo_simple_stock.dart';

class PopularStock extends SimpleStock with StockPercentageDataProvider{
  @override
  final int yesterdayClosePrice;
  @override
  final int currentPrice;

  PopularStock({ required stockName,required this.yesterdayClosePrice, required this.currentPrice,}) : super(stockName);


}