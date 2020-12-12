import 'package:flutter/material.dart';
import 'package:nova/MainPage.dart';
import 'package:nova/SignUp.dart';
//import 'package:device_preview/device_preview.dart';

void main() => runApp(
      /*DevicePreview(
        enabled: true,
        builder: (context) => */
      Nova(), // Wrap your app
      //),
    );

class Nova extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //locale: DevicePreview.locale(context), // Add the locale here
      //builder: DevicePreview.appBuilder,
      title: 'Nova',
      theme: ThemeData(
        fontFamily: 'Oxygen',
        primaryColor: Color(0xFF3dd0d8),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
            headline1: TextStyle(
              color: Colors.black,
              fontSize: 60,
              fontWeight: FontWeight.w600,
            ),
            headline2: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
            headline3: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            bodyText2: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
            button: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
      debugShowCheckedModeBanner: false,
      home: LogInSignUp(title: 'Nova LogIn or SignUp page'),
    );
  }
}

class LogInSignUp extends StatefulWidget {
  LogInSignUp({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _LogInSignUp createState() => _LogInSignUp();
}

class _LogInSignUp extends State<LogInSignUp> {
  double shadow = 4;
  bool selected = false;
  bool selected2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[600],
                        blurRadius: 2,
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/perosn.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Spacer(),
                  Expanded(
                      flex: 1,
                      child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: Container(
                                    child: GestureDetector(
                                  onTapDown: (details) {
                                    setState(() {
                                      selected = !selected;
                                    });
                                  },
                                  onTapUp: (details) {
                                    setState(() {
                                      selected = !selected;
                                    });
                                  },
                                  onTapCancel: () {
                                    setState(() {
                                      selected = !selected;
                                    });
                                  },
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return ProgressionPage();
                                      },
                                    ));
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 3),
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: selected
                                                ? Colors.grey[600]
                                                : Colors.grey[700],
                                            blurRadius: selected ? 1 : 2,
                                            spreadRadius: 0,
                                            offset: Offset(0, selected ? 1 : 4))
                                      ],
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(40),
                                          bottomRight: Radius.circular(40)),
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "LOG IN",
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                        ),
                                      ],
                                    ),
                                  ),
                                ))),
                            Spacer(),
                          ])),
                  Spacer(),
                  Expanded(
                      flex: 1,
                      child: new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Spacer(),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: GestureDetector(
                                    onTapDown: (details) {
                                      setState(() {
                                        selected2 = !selected2;
                                      });
                                    },
                                    onTapUp: (details) {
                                      setState(() {
                                        selected2 = !selected2;
                                      });
                                    },
                                    onTapCancel: () {
                                      setState(() {
                                        selected2 = !selected2;
                                      });
                                    },
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return SignUp();
                                        },
                                      ));
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(microseconds: 10),
                                      height: double.infinity,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: selected2
                                                  ? Colors.grey[600]
                                                  : Colors.grey[700],
                                              blurRadius: selected2 ? 1 : 2,
                                              spreadRadius: 0,
                                              offset:
                                                  Offset(0, selected2 ? 1 : 4))
                                        ],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            bottomLeft: Radius.circular(40)),
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "SIGN UP",
                                            style: Theme.of(context)
                                                .textTheme
                                                .button,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                          ])),
                  Spacer()
                ],
              ),
            ),
          ],
        ));
  }
}
