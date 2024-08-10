import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanagerapp/contstants/url.dart';
import 'package:taskmanagerapp/data/response_object.dart';
import 'package:taskmanagerapp/screens/auth_screen/login_screen.dart';
import 'package:taskmanagerapp/service/network_controller.dart';
import 'package:taskmanagerapp/widgets/custom_row_button.dart';
import 'package:taskmanagerapp/widgets/heading_text_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _email_TE_controller = TextEditingController();
  TextEditingController _password_TE_controller = TextEditingController();
  TextEditingController _firstName_TE_controller = TextEditingController();
  TextEditingController _lastName_TE_controller = TextEditingController();
  TextEditingController _phone_TE_controller = TextEditingController();
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
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingTextWidget(heading: "Join with us"),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _email_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _firstName_TE_controller,
                      decoration: InputDecoration(
                        hintText: "First Name",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _lastName_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Last Name",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _phone_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Mobile",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _password_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          Map<String, dynamic> params = {
                            "email": _email_TE_controller.text.trim(),
                            "firstName": _firstName_TE_controller.text.trim(),
                            "lastName": _lastName_TE_controller.text.trim(),
                            "mobile": _phone_TE_controller.text.trim(),
                            "password": _password_TE_controller.text,
                          };
                          final ResponseObject response=await NetworkController.postRequest(app_url.registration,params);
                          if(response.issuccess){
                            print("yes success");
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen(),));
                          }else{
                            print("not success");
                            print(response.status_code);
                          }
                        },
                        child: Text("Signup"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomRowButton(
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      first_text: "Already  have an account??",
                      text_button: "Sign in",
                    )
                  ],
                ),
              ),
            )
          ],
        ));
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
