import 'package:flutter_bloc/flutter_bloc.dart';

part 'change_theme_state.dart';

class ChangeThemeCubit extends Cubit<bool> {
  ChangeThemeCubit() : super(false);

  void toggleTheme() => emit(!state);
}
