import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usama_elgendy_cclean_arch/news/core/services/service_locator.dart';
import 'package:usama_elgendy_cclean_arch/news/presentation/screens/news_screen.dart';
import 'package:usama_elgendy_cclean_arch/theme/cubit/cubit/change_theme_cubit.dart';

void main() {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//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
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ChangeThemeCubit>(),
      child: BlocBuilder<ChangeThemeCubit, bool>(
        builder: (context, state) {
           debugPrint("hash in main is ${sl<ChangeThemeCubit>().hashCode}");
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: state ? ThemeMode.dark : ThemeMode.light,
            home: const NewsScreen(),
          );
        },
      ),
    );
  }
}
