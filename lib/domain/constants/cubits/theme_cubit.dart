import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickwire/domain/constants/cubits/theme_states.dart';

class ThemeCubit extends Cubit<ThemeStates>{
 

  ThemeCubit() : super(LightThemeStates());
  void toggleTheme(){
    if(state is LightThemeStates){
      //  emit means releasing a new state
      emit(DarkThemeStates());
    }else{
      emit(LightThemeStates());
    }
  }
}

 

