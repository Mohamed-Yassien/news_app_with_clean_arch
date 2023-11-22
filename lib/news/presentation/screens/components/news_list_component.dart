import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usama_elgendy_cclean_arch/news/core/services/service_locator.dart';
import 'package:usama_elgendy_cclean_arch/news/presentation/controllers/news_cubit.dart';
import 'package:usama_elgendy_cclean_arch/news/presentation/controllers/news_states.dart';

class NewsListComponent extends StatelessWidget {
  const NewsListComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsStates>(
      builder: (context, state) {
         var cubit = sl<NewsCubit>();
        return state is GetNewsLoadingState
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : state is GetNewsErrorState
                ? Center(
                    child: Text(state.errorMessage),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.all(15),
                    itemBuilder: (context, index) {
                     
                      var item = cubit.newsList[index];
                      return Card(
                        elevation: 1,
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl:item.urlToImage,
                                  fit: BoxFit.cover,
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                               Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.title,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      item.description,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 15,
                      );
                    },
                    itemCount: cubit.newsList.length,
                  );
      },
    );
  }
}
