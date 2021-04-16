import 'package:design_ui/screen/pallete.dart';
import 'package:design_ui/widgets/backgroundimage.dart';
import 'package:design_ui/widgets/passwordInput.dart';
import 'package:design_ui/widgets/roundedButton.dart';
import 'package:design_ui/widgets/textInput.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          image: "assets/images/login_bg.png",
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    "Foodybite",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    icon: Icons.email_outlined,
                    hint: "Email",
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: Icons.lock,
                    hint: "Password",
                    inputType: TextInputType.visiblePassword,
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      "ForgetPassword",
                    ),
                    child: Text(
                      "Forget Password ?",
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  RoundedButton(
                    buttonName: "Login",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  "CreateNewAccount",
                ),
                child: Container(
                  child: Text(
                    "Create New Account",
                    style: kBodyText,
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    width: 1,
                    color: kWhite,
                  ))),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
