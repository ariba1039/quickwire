import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickwire/repository/screens/otp/otp_screen.dart';
import 'package:quickwire/repository/screens/widgets/ui_helper.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(CupertinoIcons.back),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UiHelper.customText(
              text: "Enter your phone number ",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "bold",
              context: context,
            ),
            SizedBox(height: 10),
            UiHelper.customText(
              text: "Please confirm your country code and enter",
              fontWeight: FontWeight.w100,
              fontSize: 14,
              context: context,
            ),
            UiHelper.customText(
              text: " your phone number ",
              fontSize: 14,
              fontWeight: FontWeight.w100,
              context: context,
            ),
            SizedBox(height: 20),
            UiHelper.customTextField(
              controller: phoneController,
              hintText: "+92",

              textinputtype: TextInputType.number,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        text: "Continue",
        onPressed: () {
          // Navigate to OTP Screen
          Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
