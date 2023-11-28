import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usama_elgendy_cclean_arch/news/core/services/service_locator.dart';
import 'package:usama_elgendy_cclean_arch/news/presentation/controllers/news_cubit.dart';
import 'package:usama_elgendy_cclean_arch/news/presentation/screens/components/news_list_component.dart';
import 'package:usama_elgendy_cclean_arch/theme/cubit/cubit/change_theme_cubit.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NewsCubit>()..getNews(),
      child: Scaffold(
        floatingActionButton: BlocBuilder<ChangeThemeCubit, bool>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                debugPrint(
                    "hash in news is ${sl<ChangeThemeCubit>().hashCode}");
                sl<ChangeThemeCubit>().toggleTheme();
              },
              child: state
                  ? const Icon(Icons.light_mode)
                  : const Icon(Icons.dark_mode),
            );
          },
        ),
        appBar: AppBar(
          title: const Text(
            'NEWS APP',
          ),
          centerTitle: true,
        ),
        body: const NewsListComponent(),
      ),
    );
  }
}
