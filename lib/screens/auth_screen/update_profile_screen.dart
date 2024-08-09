import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanagerapp/screens/auth_screen/login_screen.dart';
import 'package:taskmanagerapp/widgets/custom_row_button.dart';
import 'package:taskmanagerapp/widgets/heading_text_widget.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  TextEditingController _img_TE_controller=TextEditingController();
  TextEditingController _email_TE_controller=TextEditingController();
  TextEditingController _password_TE_controller=TextEditingController();
  TextEditingController _firstName_TE_controller=TextEditingController();
  TextEditingController _lastName_TE_controller=TextEditingController();
  TextEditingController _phone_TE_controller=TextEditingController();
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
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeadingTextWidget(heading: "Update Profile"),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _img_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Photos",
                        prefixIcon: Icon(Icons.image)
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _email_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _firstName_TE_controller,
                      decoration: InputDecoration(
                        hintText: "First Name",
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _lastName_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Last Name",
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _phone_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Mobile",
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _password_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text("Confirm"),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }

  @override
  void dispose() {
    _email_TE_controller.dispose();
    _password_TE_controller.dispose();
    _firstName_TE_controller.dispose();
    _lastName_TE_controller.dispose();
    _phone_TE_controller.dispose();
    super.dispose();
  }

}
