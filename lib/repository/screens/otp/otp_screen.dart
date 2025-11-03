import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:quickwire/domain/constants/app_colors.dart';
import 'package:quickwire/repository/screens/profile/profile_screen.dart';
import 'package:quickwire/repository/screens/widgets/ui_helper.dart';

class OtpScreen extends StatelessWidget {
  TextEditingController otpController = TextEditingController();

  OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.otpdarkmode
          : AppColors.otplightmode,
      borderRadius: BorderRadius.circular(7),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.otpdarkmode
            : AppColors.otplightmode,
      ),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
              text: "Enter Code",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              context: context,
            ),
            SizedBox(height: 10),
            UiHelper.customText(
              text: "We have sent you an SMS with the code",
              fontSize: 14,
              fontWeight: FontWeight.normal,
              context: context,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                onCompleted: (value) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                controller: otpController,
                length: 4,
                autofocus: true,
                keyboardType: TextInputType.phone,
                obscureText: false,

                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {},
        child: Text(
          "Resend Code",
          style: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.otptextdark
                : AppColors.otptextlight,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
