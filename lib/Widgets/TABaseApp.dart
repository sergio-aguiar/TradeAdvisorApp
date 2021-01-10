import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trade_advisor/Widgets/TADepositPage.dart';
import 'package:trade_advisor/Widgets/TAHistoryPage.dart';
import 'package:trade_advisor/Widgets/TAHomePage.dart';
import 'package:trade_advisor/Widgets/TAInvestPage.dart';
import 'package:trade_advisor/Widgets/TAMainPage.dart';
import 'package:trade_advisor/Widgets/TAWithdrawPage.dart';

void main() => runApp(TradeAdvisor());

class TradeAdvisor extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'TradeAdvisor',
      initialRoute: '/',
      routes: {
        '/Home': (BuildContext context) => TAHomePage(),
        '/Invest': (BuildContext context) => TAInvestPage(),
        '/History': (BuildContext context) => TAHistoryPage(),
        '/Deposit': (BuildContext context) => TADepositPage(),
        '/Withdraw': (BuildContext context) => TAWithdrawPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TAMainPage(),
    );
  }
}