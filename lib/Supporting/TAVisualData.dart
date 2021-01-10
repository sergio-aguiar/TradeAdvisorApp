import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simple_animations/simple_animations.dart';

class TAVisualData
{
  static final Color _tweenDarkGray = Color(0xFFA6E9EAB);
  static final Color _tweenLightGray = Color(0xFFCCC2C3);

  static final Color _staticGradientLightBlue = Color(0xFF36D1DC);
  static final Color _staticGradientDarkBlue = Color(0xFF5B86E5);

  static final Color _backgroundLightGray = Color(0xFFEEF2F3);

  static final String _placeholderCurrency = '00,00\$';

  static Color getTweenDarkGray()
  {
    return _tweenDarkGray;
  }

  static Color getTweenLightGray()
  {
    return _tweenLightGray;
  }

  static Color getStaticGradientLightBlue()
  {
    return _staticGradientLightBlue;
  }

  static Color getStaticGradientDarkBlue()
  {
    return _staticGradientDarkBlue;
  }

  static Color getBackgroundLightGray()
  {
    return _backgroundLightGray;
  }

  static String getPlaceholderCurrency()
  {
    return _placeholderCurrency;
  }

  static MultiTrackTween _getAnimatedBackgroundTween()
  {
    return MultiTrackTween([
      Track("animation1").add(Duration(seconds: 5),
          ColorTween(begin: _tweenDarkGray, end: _tweenLightGray)),
      Track("animation2").add(Duration(seconds: 5),
          ColorTween(begin: _tweenLightGray, end: _tweenDarkGray)),
    ]);
  }

  static ControlledAnimation getBackgroundControlledAnimation() {
    MultiTrackTween multiTrackTween = _getAnimatedBackgroundTween();

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: multiTrackTween,
      duration: multiTrackTween.duration,
      builder: (context, animation)
      {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [animation["animation1"], animation["animation2"]]
            ),
          ),
        );
      },
    );
  }

  static BoxDecoration getStaticGradientBoxDecoration()
  {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[
          _staticGradientLightBlue,
          _staticGradientDarkBlue,
        ],
      ),
    );
  }

  static AppBar getAppBar(String appBarTitle)
  {
    return AppBar(
      title: Text(
        appBarTitle,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: Builder(
        builder: (BuildContext context)
        {
          return IconButton(
            icon: const Icon(Icons.keyboard_arrow_left, color: Colors.white,),
            iconSize: 35.0,
            onPressed: ()
            {
              if (appBarTitle == 'Invest'
                  || appBarTitle == 'History'
                  || appBarTitle == 'Deposit'
                  || appBarTitle == 'Withdraw')
              {
                Navigator.popUntil(context, ModalRoute.withName('/Home'));
              }
              else if (appBarTitle == 'TradeAdvisor')
              {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              }
              else
              {
                Navigator.pop(context);
              }
            },
          );
        },
      ),
      flexibleSpace: Container(
        decoration: getStaticGradientBoxDecoration(),
      ),
    );
  }

  static SizedBox getBottomBar(List<Widget> children)
  {
    return SizedBox(
      child: Container(
        decoration: getStaticGradientBoxDecoration(),
        child: Padding(
          padding: EdgeInsets.only(
            top: 15.0,
            bottom: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                flex: 1,
                child: children[0],
              ),
              Flexible(
                flex: 1,
                child: children[1],
              ),
              Flexible(
                flex: 1,
                child: children[2],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static List<Widget> getBottomBarWidgets(BuildContext context)
  {
    List<Widget> list = [];

    if(!isRouteInThePath(context, '/Settings'))
    {
      list.add(getBottomBarButton(Icons.settings, 'Settings', ()
      {
        // Navigator.pushNamed(context, '/Settings');
      }));
    }
    else
    {
      list.add(getBottomBarButton(Icons.settings, 'Settings', ()
      {
        // Navigator.popUntil(context, ModalRoute.withName('/Settings'));
      }));
    }

    if(!isRouteInThePath(context, '/Home'))
    {
      list.add(getBottomBarButton(Icons.home, 'Home', ()
      {
        Navigator.pushNamed(context, '/Home');
      }));
    }
    else
    {
      list.add(getBottomBarButton(Icons.home, 'Home', ()
      {
        Navigator.popUntil(context, ModalRoute.withName('/Home'));
      }));
    }

    list.add(getBottomBarButton(Icons.exit_to_app, 'Exit', ()
    {
      Navigator.popUntil(context, ModalRoute.withName('/'));
    }));

    return list;
  }

  static InkWell getBottomBarButton(IconData icon, String buttonName, Function onTap)
  {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          getBottomBarIcon(icon),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Text(
              buttonName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Icon getBottomBarIcon(IconData icon)
  {
    return Icon(icon, size: 30.0, color: Colors.white);
  }

  static bool isRouteInThePath(BuildContext context, String routeName)
  {
    return ModalRoute.of(context).settings.name.contains(routeName);
  }

  static InkWell getHomePageButton(String image, BuildContext context)
  {
    return InkWell(
      onTap: ()
      {
        Navigator.pushNamed(context, '/' + image);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          width: 150.0,
          height: 180.0,
          decoration: BoxDecoration(color: _backgroundLightGray),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/' + image.toLowerCase() + '.png'),
                width: 80,
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.only(top: 1.0),
                child: Text(
                  image,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Scaffold basePageLayout(BuildContext context, Container contents, String pageName)
  {
    return Scaffold(
      appBar: TAVisualData.getAppBar(pageName),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            getBackgroundControlledAnimation(),
            contents,
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                getBottomBar(TAVisualData.getBottomBarWidgets(context)),
              ]
            ),
          ],
        ),
      ),
    );
  }

  static Container gradeImage(String grade)
  {
    return Container(
      width: 100,
      height: 100,
      child: Center(
        child: Text(
          grade,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: _staticGradientDarkBlue,
            fontSize: 80.0,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }

  static ButtonTheme squareButton(String buttonText, double width)
  {
    return ButtonTheme(
      minWidth: 150.0,
      height: 70.0,
      child: RaisedButton(
        onPressed: () {
          // Navigator.pushNamed(context, routeName);
        },
        textColor: Colors.white,
        padding: EdgeInsets.all(0.0),
        child: SizedBox(
          width: width,
          height: 70.0,
          child: Container(
            decoration: getStaticGradientBoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      buttonText,
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static TableRow staticTableRow(String id, String company, String profit)
  {
    return TableRow(
      decoration: BoxDecoration(
        color: _tweenLightGray,
      ),
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 5.0,
            right: 5.0,
          ),
          child: Center(
            child: Text(
              id,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: 5.0,
              right: 5.0,
            ),
            child: Text(
              company,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: 5.0,
              right: 5.0,
            ),
            child: Text(
              profit + '\$',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
        )
      ],
    );
  }

  static TableRow generateTableRow(String id)
  {
    Random random = new Random();
    return staticTableRow(id, generateCompanyName(), ((random.nextDouble() * 100) - 50).toStringAsFixed(2));
  }

  static String generateCompanyName()
  {
    var names1 = ['Good', 'Great', 'The', 'Perfect', 'Old', 'New', 'Profitable', 'Interesting', 'Social'];
    var names2 = [' Tech', ' Nature', ' Stock', ' Wave', ' Market', ' Things', ' Items', ' Socks', ' Animals', ' People', ' Insects'];
    var names3 = [' SC', ' Part.', ' Corp.', ' S-Corp.', ' LLC'];

    Random random = new Random();

    return names1[random.nextInt(names1.length)]
        + names2[random.nextInt(names2.length)]
        + names3[random.nextInt(names3.length)];
  }
}