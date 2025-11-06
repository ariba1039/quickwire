import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickwire/domain/constants/app_colors.dart';
import 'package:quickwire/repository/screens/bottomnav/bottomnav_screen.dart';
import 'package:quickwire/repository/screens/widgets/ui_helper.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: UiHelper.customText(
          text: "Your Profile",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "bold",
          context: context,
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? AppColors.scaffoldDark
          : AppColors.scaffoldLight,
      body: Center(
        child: Column(
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.customImage(imgUrl: "darktheme_avatar.png")
                : UiHelper.customImage(imgUrl: "lighttheme_avatar.png"),

            SizedBox(height: 30),
            UiHelper.customTextField(
              icondata: Icons.person,
              controller: firstnameController,
              hintText: "First Name",
              context: context,
              textinputtype: TextInputType.name,
              obscureText: false,
            ),
            SizedBox(height: 20),
            UiHelper.customTextField(
              icondata: Icons.person,
              controller: lastnameController,
              hintText: "Last Name",
              textinputtype: TextInputType.name,
              obscureText: false,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomNavScreen()),
          );
        },
        text: 'Save',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
