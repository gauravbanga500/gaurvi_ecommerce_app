import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


AppBar myAppBar(){
  return AppBar(
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Color(0xfff5f5f5),
              shape: BoxShape.circle,
            ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.grid_view_rounded))),
          SizedBox(
            width: 285,
          ),
          Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Color(0xfff5f5f5),
                shape: BoxShape.circle,
              ),
              child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.bell))),
          SizedBox(
            width: 5,
          ),
        ],
      ),



    ],
  );
}


AppBar productScreenAppBar(){
  return AppBar(
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Color(0xfff5f5f5),
                shape: BoxShape.circle,
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.share))),
          SizedBox(
            width: 10,
          ),
          Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Color(0xfff5f5f5),
                shape: BoxShape.circle,
              ),
              child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.heart))),
          SizedBox(
            width: 5,
          ),
        ],
      ),



    ],
  );
}

