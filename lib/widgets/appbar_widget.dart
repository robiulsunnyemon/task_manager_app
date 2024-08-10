import 'package:flutter/material.dart';

Widget appBar(String title, String email,Icon icon) {
  return AppBar(
    backgroundColor: Colors.green,
    title: Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50)
          ),
          child: icon,
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            Text(email,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
          ],),
      ],
    ),
  );
}