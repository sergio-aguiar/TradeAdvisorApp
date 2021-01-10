import 'package:flutter/material.dart';
import 'package:trade_advisor/Supporting/TAVisualData.dart';

class TADepositPage extends StatefulWidget
{
  TADepositPage({Key key}) : super(key: key);

  @override
  _TADepositPageState createState() => _TADepositPageState();
}

class _TADepositPageState extends State<TADepositPage>
{
  @override
  Widget build(BuildContext context)
  {
    Container contents = Container(
      child: Padding(
        padding: EdgeInsets.only(
          top: 100.0,
          left: 20.0,
          right: 20.0,
          bottom: 160.0
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Container(
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Container(
                      decoration: TAVisualData.getStaticGradientBoxDecoration(),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 15.0,
                              bottom: 15.0,
                            ),
                            child: Text(
                              'Deposit Funds',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            child: Text(
                              'Amount to Deposit:',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0,),
                            child: SizedBox(
                              width: double.infinity,
                              child: Container(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0,),
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                  style: TextStyle(fontSize: 19.0,),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: TAVisualData.squareButton('Proceed with Deposit', 310.0)
            ),
          ],
        ),
        ),
      );

    return TAVisualData.basePageLayout(context, contents, 'Deposit');
  }
}