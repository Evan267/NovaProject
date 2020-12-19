import 'package:flutter/material.dart';
import 'package:nova/Data.dart';
import 'package:nova/SignUp.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class MainAppController extends StatefulWidget {
  _MainState createState() => _MainState();
}

class _MainState extends State<MainAppController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new BarreExp(),
          new Conteneur(
            height: size.height * 0.34,
            padding: EdgeInsets.only(
                top: size.height * 0.025,
                right: size.width * 0.05,
                left: size.width * 0.05),
            margin: EdgeInsets.only(
                right: size.width * 0.05,
                left: size.width * 0.05,
                top: size.height * 0.05),
            width: size.width * 0.9,
            child: new Text("Progression",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
          new BoutonConteneur(text: "My profile"),
          new BoutonConteneur(text: "My objectives"),
          new BoutonConteneur(text: "My objectives"),
        ],
      ),
    );
  }
}

class Polygon extends StatelessWidget {
  final int nombre;
  final marge;
  final colortxt;
  final colorpoly;
  const Polygon(
      {Key key, this.nombre, this.marge, this.colorpoly, this.colortxt})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Container(
        height: size.height * 0.05,
        width: size.height * 0.05,
        margin: EdgeInsets.only(left: marge),
        child: ClipPolygon(
          sides: 8,
          borderRadius: 0.0, // Default 0.0 degrees
          rotate: 22.5, // Default 0.0 degrees
          child: Container(
            padding: EdgeInsets.only(top: size.height * 0.012),
            color: colorpoly,
            child: new Text(
              "$nombre",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colortxt,
                fontSize: 17,
              ),
            ),
          ),
        ));
  }
}

class BarreExp extends StatelessWidget {
  BarreExp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Container(
      margin: EdgeInsets.only(
          left: size.width * 0.04,
          right: size.width * 0.04,
          top: size.height * 0.10),
      height: size.height * 0.10,
      width: size.width * 0.9 + 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: Theme.of(context).primaryColor,
          )),
      child: new Row(
        children: <Widget>[
          Container(
              height: size.height * 0.10,
              width: size.width * 0.9 / expSize,
              constraints: BoxConstraints(minWidth: size.height * 0.10),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  )),
              child: new FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.fitHeight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new FittedBox(
                        fit: BoxFit.contain,
                        child: Container(
                          height: size.height * 0.10,
                          width: size.height * 0.10,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(
                                color: Theme.of(context).primaryColor,
                              )),
                          child: IconButton(
                            icon: Icon(Icons.supervised_user_circle),
                            onPressed: null,
                          ),
                        ),
                      ),
                      new Positioned(
                          left: size.width * 0.231,
                          top: size.height * 0.025,
                          bottom: size.height * 0.9,
                          child: new Polygon(
                            nombre: level,
                            marge: size.width * 0.03,
                            colorpoly: colorWhite,
                            colortxt: colorBlue,
                          ))
                    ],
                  ))),
        ],
      ),
    );
  }
}

class BoutonConteneur extends StatelessWidget {
  final String text;

  BoutonConteneur({
    Key key,
    this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Conteneur(
      margin: EdgeInsets.only(
          right: size.width * 0.05,
          left: size.width * 0.05,
          top: size.height * 0.03),
      padding:
          EdgeInsets.only(left: size.width * 0.030, top: size.height * 0.027),
      width: size.width * 0.9,
      height: size.height * 0.08,
      child: new Text(
        text,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
      ),
    );
  }
}
