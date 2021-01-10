import 'package:flutter/material.dart';
import 'package:trade_advisor/Supporting/TAVisualData.dart';

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
            TAVisualData.staticTableRow('0', 'Useless Company A', '-6.00\$'),
            TAVisualData.staticTableRow('1', 'Sure Thing SA A', '35.00\$'),
            TAVisualData.staticTableRow('2', 'Useless Company B', '-11.00\$'),
            TAVisualData.staticTableRow('3', 'Sure Thing SA B', '24.00\$'),
            TAVisualData.staticTableRow('4', 'Useless Company C', '-63.00\$'),
            TAVisualData.staticTableRow('5', 'Sure Thing SA C', '58.00\$'),
            TAVisualData.staticTableRow('6', 'Useless Company D', '-54.00\$'),
            TAVisualData.staticTableRow('7', 'Sure Thing SA D', '41.00\$'),
            TAVisualData.staticTableRow('8', 'Useless Company E', '-26.00\$'),
            TAVisualData.staticTableRow('9', 'Sure Thing SA E', '70.00\$'),
            TAVisualData.staticTableRow('10', 'Useless Company F', '-36.00\$'),
            TAVisualData.staticTableRow('11', 'Sure Thing SA F', '96.00\$'),
            TAVisualData.staticTableRow('12', 'Useless Company G', '-14.00\$'),
            TAVisualData.staticTableRow('13', 'Sure Thing SA G', '6.00\$'),
            TAVisualData.staticTableRow('14', 'Useless Company H', '-54.00\$'),
            TAVisualData.staticTableRow('15', 'Sure Thing SA H', '11.00\$'),
            TAVisualData.staticTableRow('16', 'Useless Company I', '-7.00\$'),
            TAVisualData.staticTableRow('17', 'Sure Thing SA I', '35.00\$'),
            TAVisualData.staticTableRow('18', 'Useless Company J', '-72.00\$'),
            TAVisualData.staticTableRow('19', 'Sure Thing SA J', '66.00\$'),
            TAVisualData.staticTableRow('20', 'Useless Company K', '-4.00\$'),
            TAVisualData.staticTableRow('21', 'Sure Thing SA K', '72.00\$'),
            TAVisualData.staticTableRow('22', 'Useless Company L', '-95.00\$'),
            TAVisualData.staticTableRow('23', 'Sure Thing SA L', '66.00\$'),
            TAVisualData.staticTableRow('24', 'Useless Company M', '-17.00\$'),
            TAVisualData.staticTableRow('25', 'Sure Thing SA M', '57.00\$'),
            TAVisualData.staticTableRow('26', 'Useless Company N', '-9.00\$'),
            TAVisualData.staticTableRow('27', 'Sure Thing SA N', '38.00\$'),
            TAVisualData.staticTableRow('28', 'Useless Company O', '-52.00\$'),
            TAVisualData.staticTableRow('29', 'Sure Thing SA O', '96.00\$'),
            TAVisualData.staticTableRow('30', 'Useless Company P', '-66.00\$'),
            TAVisualData.staticTableRow('31', 'Sure Thing SA P', '87.00\$'),
            TAVisualData.staticTableRow('32', 'Useless Company Q', '-1.00\$'),
            TAVisualData.staticTableRow('33', 'Sure Thing SA Q', '36.00\$'),
          ],
        ),
      ),
    );

    return TAVisualData.basePageLayout(context, contents, 'History');
  }
}