import 'package:flutter/material.dart';
import 'package:trade_advisor/Supporting/TAVisualData.dart';

import '../Supporting/TAVisualData.dart';

class TAHistoryPage extends StatefulWidget
{
  TAHistoryPage({Key key}) : super(key: key);

  @override
  _TAHistoryPageState createState() => _TAHistoryPageState();
}

class _TAHistoryPageState extends State<TAHistoryPage>
{
  @override
  Widget build(BuildContext context)
  {
    Container contents = Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          columnWidths: {
            0 : FlexColumnWidth(1),
            1 : FlexColumnWidth(6),
            2 : FlexColumnWidth(2),
          },
          border: TableBorder.all(
            color: Colors.black,
          ),
          children: [
            for (int i = 0; i < 34; i++)
              TAVisualData.generateTableRow(i.toString()),
          ],
        ),
      ),
    );

    return TAVisualData.basePageLayout(context, contents, 'History');
  }
}