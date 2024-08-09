import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanagerapp/screens/auth_screen/forget_password_screen.dart';
import 'package:taskmanagerapp/screens/auth_screen/signup_screen.dart';
import 'package:taskmanagerapp/widgets/heading_text_widget.dart';

import '../../widgets/custom_row_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email_TE_controller = TextEditingController();
  TextEditingController _password_TE_controller = TextEditingController();
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
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingTextWidget(heading: "Get started with.."),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _email_TE_controller,
                      decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(
                            Icons.email,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _password_TE_controller,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(
                            Icons.password,
                          ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => ForgetPasswordScreen(),
                              ),
                              );
                            },
                            child: Text("Forget Password?",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Login"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomRowButton(
                      ontap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      first_text: "Don't have an account??",
                      text_button: "Signup",
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
    _email_TE_controller.dispose();
    _password_TE_controller.dispose();
    super.dispose();
  }
}
