import 'package:flutter/material.dart';
import 'package:nova/Data.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>[
      new Container(
        padding: EdgeInsets.only(top: size.height * 0.10),
        height: size.height * 0.40,
        width: size.width * 0.85,
        child: new RichText(
            text: TextSpan(
                text: "Welcome",
                style: Theme.of(context).textTheme.headline1,
                children: <TextSpan>[
              TextSpan(
                  text: ".",
                  style: TextStyle(color: Theme.of(context).primaryColor))
            ])),
      ),
      Center(
          child: Container(
              height: size.height * 0.55,
              width: size.width * 0.8,
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: new Text(
                        "Register your account to save your settings",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    new SignTextfield(
                      hintText: "e-mail",
                      obscureText: false,
                    ),
                    new SignTextfield(
                      hintText: "password",
                      obscureText: true,
                    ),
                    new Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        width: 180,
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Theme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[400],
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  offset: Offset(0, 4))
                            ]),
                        child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new SocialConnect(
                                lien: "assets/apple_logo.png",
                              ),
                              new SocialConnect(
                                lien: "assets/facebook_logo.png",
                              ),
                              new SocialConnect(
                                lien: "assets/twitter_logo.png",
                              ),
                            ])),
                    new RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "By continuing, you agree to $brandName’s",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: " Terms & Conditions",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor)),
                              TextSpan(text: " and "),
                              TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor)),
                            ]))
                  ]))))
    ])));
  }
}

class SignTextfield extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  const SignTextfield({Key key, this.hintText, this.obscureText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new TextField(
      obscureText: obscureText,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[200])),
    );
  }
}

class SocialConnect extends StatelessWidget {
  final String lien;
  final onTap;
  const SocialConnect({
    Key key,
    this.lien,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new FittedBox(
      child: GestureDetector(
        onTap: onTap,
        child: Image(image: AssetImage(lien)),
      ),
    );
  }
}
