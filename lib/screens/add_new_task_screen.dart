import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanagerapp/screens/auth_screen/forget_password_screen.dart';
import 'package:taskmanagerapp/screens/auth_screen/signup_screen.dart';
import 'package:taskmanagerapp/widgets/heading_text_widget.dart';

import '../../widgets/custom_row_button.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  TextEditingController _sub_TE_controller = TextEditingController();
  TextEditingController _discription_TE_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Stack(
          children: [
            SvgPicture.asset(
              "assets/img/background.svg",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeadingTextWidget(heading: "Add New Task"),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _sub_TE_controller,
                      decoration: InputDecoration(
                          hintText: "Subject",
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _discription_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Description",
                      ),
                      maxLines: 10,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Add"),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }

  @override
  void dispose() {
    _sub_TE_controller.dispose();
    _discription_TE_controller.dispose();
    super.dispose();
  }
}
