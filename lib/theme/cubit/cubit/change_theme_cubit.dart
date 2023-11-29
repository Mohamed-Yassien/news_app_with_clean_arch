import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usama_elgendy_cclean_arch/main.dart';

part 'change_theme_state.dart';

class ChangeThemeCubit extends Cubit<ChangeThemeState> {
  ChangeThemeCubit() : super(ChangeThemeInitial());

  //void toggleTheme() => emit(!state);

  bool light = true;

  switchTheme({bool? fromCach}) {
    if (fromCach != null) {
      light = fromCach;
      emit(ToggleThemeState());
    } else {
      light = !light;
      prefs.setBool("theme", light);
      emit(ToggleThemeState());
    }
  }
}
