import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({
    bool isCurrentThemeDark = false,
  }) : super(ThemeState(isDarkmode: isCurrentThemeDark));

  void toggleTheme() {
    emit(ThemeState(isDarkmode: !state.isDarkmode));
  }

  void setDarkMode() {
    emit(const ThemeState(isDarkmode: true));
  }

  void setLightMode() {
    emit(const ThemeState(isDarkmode: false));
  }
}
