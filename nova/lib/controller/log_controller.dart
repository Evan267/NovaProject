import 'package:flutter/material.dart';
import 'package:nova/LogIn.dart';
import 'package:nova/SignUp.dart';
import 'package:nova/view/my_material.dart';

class LogController extends StatefulWidget {
  _LogState createState() => _LogState();
}

class _LogState extends State<LogController> {
  double shadow = 4;
  bool selected = false;
  bool selected2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowGlow();
      },
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: MyPicture(image: "assets/perosn.jpeg"),
        ),
      ),
    ));
  }
}

/*backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                
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
                                        return LogIn();
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
        )*/
