import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanagerapp/screens/auth_screen/forget_password_screen.dart';
import 'package:taskmanagerapp/screens/auth_screen/set_password.dart';
import 'package:taskmanagerapp/screens/auth_screen/signup_screen.dart';
import 'package:taskmanagerapp/widgets/heading_text_widget.dart';
import 'package:taskmanagerapp/widgets/middle_text.dart';

import '../../widgets/custom_row_button.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({super.key});

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
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
                    HeadingTextWidget(heading: "PIN Verification"),
                    middle_text(text: "A 6 digit verification pin will send to your email address",),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _email_TE_controller,
                      decoration: InputDecoration(
                          hintText: "PIN",
                          prefixIcon: Icon(
                            Icons.pin,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SetPasswordScreen(),
                          ),
                          );
                        },
                        child: Text("Verify"),
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
                      first_text: "Have an account??",
                      text_button: "Sign in",
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
    super.dispose();
  }
}
