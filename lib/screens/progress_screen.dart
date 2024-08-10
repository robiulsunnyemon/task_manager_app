import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanagerapp/screens/auth_screen/forget_password_screen.dart';
import 'package:taskmanagerapp/screens/auth_screen/signup_screen.dart';
import 'package:taskmanagerapp/widgets/appbar_widget.dart';
import 'package:taskmanagerapp/widgets/heading_text_widget.dart';
import 'package:taskmanagerapp/widgets/middle_text.dart';
import 'package:taskmanagerapp/widgets/single_task_widget.dart';

import '../../widgets/custom_row_button.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                child: Icon(Icons.person),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Emon",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  Text("robiulsunnyemon@gmail.com",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
                ],),
            ],
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for(int i=0;i<20; i++)
                    SingleTaskWidget(
                      title: "Lorem Ipsum is simplity dummy",
                      description: "It is long estabilish face that a reader will be desable by the readdle content of a page when looking at its layout",
                      datetime: "Date: 02/12/2024",
                      task_state: "Progress",
                      task_state_color: Colors.purple,
                      delete: (){},
                      save: (){},
                    ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
