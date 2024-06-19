
import 'package:candlesticks/candlesticks.dart';
import 'package:flutter/material.dart';
import 'package:my_candle_sticks/model/candles_model.dart';

class MyCandleSticksView extends StatefulWidget {
  const MyCandleSticksView({super.key});

  @override
  State<MyCandleSticksView> createState() => _MyCandleSticksViewState();
}

class _MyCandleSticksViewState extends State<MyCandleSticksView> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Candlesticks(
              key: Key("symbols"),
              candles: candles,
              actions: [
                ToolBarAction(width: 60,child: Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text("calculando..."),
              ), onPressed: (){

              }),

              ToolBarAction(width: 60,child: Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text("calculando... 2"),
              ), onPressed: (){ 

              }),


              ToolBarAction(width: 60,child: Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text("calculando... 3"),
              ), onPressed: (){

              }),
              
              ],
              ),
          )
        ],
      ),
    );
  }
}