import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanagerapp/screens/auth_screen/pin_verification_screen.dart';
import 'package:taskmanagerapp/screens/auth_screen/signup_screen.dart';
import 'package:taskmanagerapp/widgets/heading_text_widget.dart';
import 'package:taskmanagerapp/widgets/middle_text.dart';
import '../../widgets/custom_row_button.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController _email_TE_controller = TextEditingController();
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
                    const HeadingTextWidget(heading: "Your Email Address"),
                    const middle_text(text: "A 6 digit verification pin will send to your email address",),
                    const SizedBox(
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
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                           Navigator.push(context, MaterialPageRoute(
                             builder: (context) => PinVerificationScreen(),
                           ),
                          );
                        },
                        child: Text("Next"),
                      ),
                    ),
                    const SizedBox(
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
