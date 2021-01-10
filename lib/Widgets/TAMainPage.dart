import 'package:flutter/material.dart';
import 'package:trade_advisor/Supporting/LogoClipper.dart';
import 'package:trade_advisor/Supporting/TAVisualData.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class TAMainPage extends StatefulWidget
{
  TAMainPage({Key key}) : super(key: key);

  @override
  _TAMainPageState createState() => _TAMainPageState();
}

class _TAMainPageState extends State<TAMainPage> 
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Stack(
              children: [
                TAVisualData.getBackgroundControlledAnimation(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Image(
                        image: AssetImage('assets/logo.png'),
                        width: double.maxFinite,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 60.0,
                          bottom: 60.0,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Container(
                            child: SizedBox(
                              height: double.infinity,
                              width: double.infinity,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: TAVisualData.getBackgroundLightGray(),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        'Sign In:',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: TAVisualData.getStaticGradientDarkBlue(),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 2.5,
                                        left: 5.0,
                                        right: 5.0,
                                        bottom: 1.25,
                                      ),
                                      child: SignInButton(
                                        Buttons.GoogleDark,
                                        onPressed: ()
                                        {
                                          Navigator.pushNamed(context, '/Home');
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 1.25,
                                        left: 5.0,
                                        right: 5.0,
                                        bottom: 2.5,
                                      ),
                                      child: SignInButton(
                                        Buttons.Facebook,
                                        onPressed: ()
                                        {
                                          Navigator.pushNamed(context, '/Home');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}