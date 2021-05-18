

import 'package:flutter/material.dart';

Widget circleButtonWithIcon(
      {Function onPressed,
      IconData iconData,
      double height = 40,
      double width = 40,
      Color boxShadowColor,
      Key key,
      double iconSize = 18.0,}) {

const List<Color> defaultColor = [
  Color(0xff00f260),
  Color(0xff0575e6),
];
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: defaultColor,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: boxShadowColor ?? Colors.green[100],
              offset: new Offset(0.0, 5.0),
              blurRadius: 7.0,
              spreadRadius: 0.0)
        ],
      ),
      child: Center(
        child: IconButton(
          //key: Key,
          iconSize: iconSize,
          onPressed: onPressed,
          icon: Icon(
            iconData ?? Icons.send,
            color: Colors.white,
          ),
        ),
      ),
    );
  }


  Widget tileWithIconTitleAndCount(BuildContext context, {Color color = Colors.cyan, Function onTap, Widget icon, String count = "0", String title = "title", String fontFamily = "Montserrat"}){
    return Padding(
           padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
           child: Container(
                 width: MediaQuery.of(context).size.width/1.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                   // border: Border.all(color: Colors.grey),
                    color: color,
                    boxShadow: <BoxShadow>[
                       BoxShadow(
                      color: Colors.grey[350].withOpacity(0.5),
                      blurRadius: 10,
                      offset: Offset(3, 3),
                       //spreadRadius: 5.0
                    ),
                    ],
                   
                  ),
                  child: Material(
                      color: Colors.transparent,
                    child:InkWell(
                         onTap: onTap,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                           highlightColor: Colors.transparent,
                        child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        // SizedBox(width: 8.0,),
                         Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Container(
                                    height: 60.0,
                                    width: 60.0,
                                    decoration: new BoxDecoration(
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color:  Colors.black54.withOpacity(0.1),
                                              offset: new Offset(3, 3.0),
                                              blurRadius: 10.0,
                                              spreadRadius: 0.0)
                                        ],
                                        borderRadius: new BorderRadius.circular(50.0),
                                        color: Colors.white),
                                    child: icon,
                                  ),
                                
                               
                               Text(count, style: TextStyle(fontFamily: fontFamily,color: Colors.white,fontWeight: FontWeight.w700, fontSize: 40.0),),
                           ],
                         ),
                         // SizedBox(width: 10.0,),
                       Text(title, style: TextStyle(fontFamily: fontFamily,color: Colors.white,fontWeight: FontWeight.w500, fontSize: 20.0),),
                      ],
                    ),
                  ),
                ),
              ),
              ),
              
       );
  }
