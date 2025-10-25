import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickwire/domain/constants/cubits/theme_cubit.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Themes'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Access the ThemeCubit and toggle the theme
               BlocProvider.of<ThemeCubit>(context).toggleTheme();
            },
            icon: const Icon(Icons.dark_mode_outlined),
          ),
        ],
      ),
      
    );
  }
}