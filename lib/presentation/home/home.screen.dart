import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/home/controllers/home.controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        final newsModel = controller.newsModel.value;

        if (newsModel == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: newsModel.articles?.length,
            itemBuilder: (context, index) {
              final newsArticle = newsModel.articles?[index];

              return Card(
                child: Container(
                  child: ListTile(
                    isThreeLine: true,
                    horizontalTitleGap: 50,
                    leading: Image.network(newsArticle?.image ?? ''),
                    title: Text(newsArticle!.title!),
                    subtitle: Text(newsArticle.description!),
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
