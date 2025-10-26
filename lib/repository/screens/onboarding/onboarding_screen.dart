import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickwire/domain/constants/app_colors.dart';
import 'package:quickwire/domain/constants/cubits/theme_cubit.dart';
import 'package:quickwire/repository/screens/widgets/ui_helper.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:quickwire/domain/constants/cubits/theme_cubit.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<ThemeCubit>(context).toggleTheme();
              },
              icon: Icon(Icons.dark_mode))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imgUrl: "onboarding_light.png"),
            SizedBox(height: 20),
            UiHelper.customText(
              text: "Connect instantly with ",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,
              context: context,
            ),
            UiHelper.customText(
              text: "your family and friends ",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,
              context: context,
            ),
            UiHelper.customText(
              text: "over countries.",
              fontSize: 24,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,
              context: context,
            ),
          ],
        ),
        
      ),
      floatingActionButton: UiHelper.customButton(
        
          onPressed: () {
           
          }, text: 'Start Messaging'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
    );
  }
}
