import 'package:design_ui/screen/pallete.dart';
import 'package:design_ui/widgets/backgroundimage.dart';
import 'package:design_ui/widgets/passwordInput.dart';
import 'package:design_ui/widgets/roundedButton.dart';
import 'package:design_ui/widgets/textInput.dart';
import 'package:flutter/material.dart';

class CreateNewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(
          image: "assets/images/register_bg.png",
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: size.width * 0.14,
                        backgroundColor: Colors.grey.shade400.withOpacity(0.5),
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: kWhite,
                          size: size.width * 0.1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.05,
                      left: size.width * 0.55,
                      child: Container(
                        height: size.height * 0.1,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: kBlue,
                          shape: BoxShape.circle,
                          border: Border.all(color: kWhite, width: 1),
                        ),
                        child: Icon(
                          Icons.arrow_upward_outlined,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                Column(
                  children: [
                    TextInputField(
                      icon: Icons.account_circle,
                      hint: "User",
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      icon: Icons.email_outlined,
                      hint: "Email",
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      icon: Icons.lock,
                      hint: "Password",
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      icon: Icons.lock,
                      hint: "Confirm Password",
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(buttonName: "Register"),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account ?",
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/");
                          },
                          child: Text(
                            "Login",
                            style: kBodyText.copyWith(color: kBlue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
