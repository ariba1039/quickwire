import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickwire/domain/constants/app_themes.dart';
import 'package:quickwire/domain/constants/cubits/theme_cubit.dart';
import 'package:quickwire/domain/constants/cubits/theme_states.dart';
import 'package:quickwire/repository/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(BlocProvider(create: (context) => ThemeCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeStates>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',
          theme: state is LightThemeStates
              ? AppThemes.lightTheme
              : AppThemes.darkTheme,
          home:  OnboardingScreen(),
          
        );
      },
    );
  }
}
