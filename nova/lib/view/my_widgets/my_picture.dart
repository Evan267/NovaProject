import 'package:flutter/material.dart';

class MyPicture extends BoxDecoration {

  MyPicture({
    @required String image,
    double radiusLeft,
    double radiusRight,
  }) : super(
    image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover,),
    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(radiusLeft),bottomRight: Radius.circular(radiusRight),),
    boxShadow: [BoxShadow(color: Colors.grey[600],blurRadius: 2,offset: Offset(0, 4))],
  );

}


                  