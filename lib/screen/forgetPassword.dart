import 'package:design_ui/screen/pallete.dart';
import 'package:design_ui/widgets/backgroundimage.dart';
import 'package:design_ui/widgets/roundedButton.dart';
import 'package:design_ui/widgets/textInput.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(
          image: "assets/images/login_bg.png",
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: kWhite,
              ),
            ),
            title: Text(
              "Forget Password",
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Container(
                      // height: size.height * 0.08,
                      width: size.width * 0.8,
                      child: Text(
                        "Enter your Email we will send instruction to reset your Password",
                        style: kBodyText,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextInputField(
                      icon: Icons.email_outlined,
                      hint: "Email",
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedButton(buttonName: "Send")
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
