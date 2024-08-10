import 'package:flutter/material.dart';
import 'middle_text.dart';

class SingleTaskWidget extends StatelessWidget {
  final String title;
  final String description;
  final String datetime;
  final String task_state;
  final Color task_state_color;
  final Function() save;
  final Function() delete;
  const SingleTaskWidget({super.key, required this.title, required this.description, required this.datetime, required this.task_state, required this.save, required this.delete, required this.task_state_color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15
              ),),
              SizedBox(height: 5,),
              middle_text(text: description),
              SizedBox(height: 7,),
              Text(datetime),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // height: 25,
                    // width: 50,
                    decoration: BoxDecoration(
                        color: task_state_color,
                        borderRadius: BorderRadius.circular(7)
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                      child: Text(task_state,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    )),
                  ),
                  Row(children: [
                    IconButton(onPressed: save,icon: Icon(Icons.save,color: Colors.green,),),
                    IconButton(onPressed: delete,icon: Icon(Icons.delete_rounded,color: Colors.red,),),
                  ],)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
