import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanagerapp/screens/auth_screen/login_screen.dart';
import 'package:taskmanagerapp/widgets/custom_row_button.dart';
import 'package:taskmanagerapp/widgets/heading_text_widget.dart';
import 'package:taskmanagerapp/widgets/middle_text.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  TextEditingController _password_TE_controller=TextEditingController();
  TextEditingController _confirm_password_TE_controller=TextEditingController();

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
                    const HeadingTextWidget(heading: "Set Password"),
                    const middle_text(text: "Minimum length password 8 character with Latter and number combination"),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _password_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _confirm_password_TE_controller,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: const Text("Confirm"),
                      ),
                    ),
                    SizedBox(height: 20,),
                    CustomRowButton(
                      ontap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                        );
                      },
                      first_text: "Have an account??",
                      text_button: "Sign in",
                    )
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
    _password_TE_controller.dispose();
    _confirm_password_TE_controller.dispose();
    super.dispose();
  }

}
