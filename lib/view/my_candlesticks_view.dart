
import 'package:candlesticks/candlesticks.dart';
import 'package:flutter/material.dart';

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
              key: Key(),
              candles: candles),
          )
        ],
      ),
    );
  }
}