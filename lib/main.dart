import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:usama_elgendy_cclean_arch/news/core/services/service_locator.dart';
import 'package:usama_elgendy_cclean_arch/news/presentation/screens/news_screen.dart';
import 'package:usama_elgendy_cclean_arch/theme/cubit/cubit/change_theme_cubit.dart';

late  SharedPreferences prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  bool? theme = prefs.getBool("theme");
  ServiceLocator().init();
  runApp( MyApp(theme: theme,));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.theme});

  final bool? theme;
//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
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ChangeThemeCubit>()..switchTheme(fromCach: theme),
      child: BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
        builder: (context, state) {
          var cubit = sl<ChangeThemeCubit>();
          debugPrint("hash in main is ${sl<ChangeThemeCubit>().hashCode}");
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: cubit.light ? ThemeMode.light : ThemeMode.dark,
            home: const NewsScreen(),
          );
        },
      ),
    );
  }
}
