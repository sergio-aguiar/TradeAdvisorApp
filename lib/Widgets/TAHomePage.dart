import 'package:flutter/material.dart';
import 'package:trade_advisor/Supporting/TAVisualData.dart';

class TAHomePage extends StatefulWidget
{
  TAHomePage({Key key}) : super(key: key);

  @override
  _TAHomePageState createState() => _TAHomePageState();
}

class _TAHomePageState extends State<TAHomePage>
{
  bool _valuesInit = false;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: TAVisualData.getAppBar("TradeAdvisor"),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 5,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      child: TAVisualData.getBackgroundControlledAnimation(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 40.0,
                      bottom: 40.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Center(
                                  child: TAVisualData.getHomePageButton('Deposit', context),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Center(
                                  child: TAVisualData.getHomePageButton('Withdraw', context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Center(
                                  child: TAVisualData.getHomePageButton('Invest', context),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Center(
                                  child: TAVisualData.getHomePageButton('History', context),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: Text(
                                    'Banked',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Text(
                                    _valuesInit ?
                                    'REAL VALUES HERE' :
                                    TAVisualData.getPlaceholderCurrency(),
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: Text(
                                    'Stock Value',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Text(
                                    _valuesInit ?
                                    'REAL VALUES HERE' :
                                    TAVisualData.getPlaceholderCurrency(),
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: TAVisualData.getStaticGradientBoxDecoration(),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3.5,
                        spreadRadius: 0.0,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}