import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:nova/LogIn.dart';
import 'package:nova/Data.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  Color colorMaleButton = Colors.white;
  Color colorFemaleButton = Colors.white;
  Color colorMaleText = Colors.black;
  Color colorFemaleText = Colors.black;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: <Widget>[
          new Conteneur(
            height: size.height * 0.15,
            margin: EdgeInsets.only(right: 20, left: 20, top: 10),
            width: double.infinity,
          ),
          new Container(
              margin: EdgeInsets.only(right: 30, left: 30, top: 20),
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(bottom: 20, top: 10),
                      child: new Text(
                        "Hi there, we need some information about you to create your card",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    new Container(
                      child: new Text(
                        "GENDER",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    new Container(
                        margin: EdgeInsets.only(right: 25, left: 25, bottom: 5),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            new TextButton(
                                onPressed: () {
                                  setState(() {
                                    colorMaleButton =
                                        Theme.of(context).primaryColor;
                                    colorFemaleButton = Colors.white;
                                    gender = "Male";
                                    colorMaleText = Colors.white;
                                    colorFemaleText = Colors.black;
                                  });
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: colorMaleButton,
                                    primary: colorMaleText,
                                    minimumSize: Size(size.width * 0.30, 20),
                                    side: BorderSide(
                                        width: 1.0,
                                        color: Theme.of(context).primaryColor),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: new Text(
                                  "MALE",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                            new TextButton(
                                onPressed: () {
                                  setState(() {
                                    colorFemaleButton =
                                        Theme.of(context).primaryColor;
                                    colorMaleButton = Colors.white;
                                    gender = "Female";
                                    colorFemaleText = Colors.white;
                                    colorMaleText = Colors.black;
                                  });
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: colorFemaleButton,
                                    primary: colorFemaleText,
                                    minimumSize: Size(size.width * 0.30, 20),
                                    side: BorderSide(
                                        width: 1.0,
                                        color: Theme.of(context).primaryColor),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: new Text(
                                  "FEMALE",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                          ],
                        )),
                    new SignUpField(
                      label: "FIRST NAME",
                      onChanged: (value) {
                        firstName = value;
                      },
                    ),
                    new SignUpField(
                      label: "LAST NAME",
                      onChanged: (value) {
                        lastName = value;
                      },
                    ),
                    new SignUpField(
                      label: "DATE OF BIRTH",
                      onTap: () {
                        showDatePicker(
                          context: context,
                          initialDate: dateBirth,
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2021),
                        ).then((date) {
                          setState(() {
                            dateBirth = date;
                          });
                        });
                      },
                      onChanged: (value) {
                        dateBirth = value;
                      },
                    ),
                    new Container(
                      //child: new Row(children: <Widget>[
                      child: new SignUpField(
                        label: "HEIGHT",
                        onChanged: (value) {
                          height = value;
                        },
                      ),
                      //new PopUpButton(),
                      //]),
                    ),
                    new SignUpField(
                      label: "WEIGHT",
                      onChanged: (value) {
                        weight = value;
                      },
                    ),
                  ])),
          Container(
              margin: EdgeInsets.all(10),
              child: new FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LogIn();
                    },
                  ));
                },
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                child: new Icon(Icons.check),
              ))
        ],
      ),
    );
  }
}

class SignUpField extends StatelessWidget {
  final String label;
  final ValueChanged onChanged;
  final onTap;
  const SignUpField({Key key, this.label, this.onChanged, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new TextField(
        onTap: onTap,
        onChanged: onChanged,
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.sentences,
        maxLines: 1,
        cursorHeight: 22,
        cursorWidth: 1.0,
        decoration: InputDecoration(
          hoverColor: Colors.grey[300],
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          border: InputBorder.none,
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 16,
        ),
      ),
    );
  }
}

class PopUpButton extends StatelessWidget {
  const PopUpButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        child: new Text(heightUnit),
        itemBuilder: (value) => <PopupMenuItem<String>>[
              new PopupMenuItem<String>(child: new Text('cm'), value: 'cm'),
              new PopupMenuItem<String>(child: new Text('ft'), value: 'ft'),
            ],
        onSelected: (value) {
          heightUnit = value;
        });
  }
}

class Conteneur extends StatelessWidget {
  final height;
  final width;
  final margin;
  final padding;
  final Widget child;
  const Conteneur({
    Key key,
    this.height,
    this.width,
    this.margin,
    this.padding,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: height,
      margin: margin,
      padding: padding,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[500],
                blurRadius: 5,
                spreadRadius: 0,
                offset: Offset(0, 3))
          ]),
      child: child,
    );
  }
}
