import 'package:get/get.dart';
import 'package:getx_clean_architecture/domain/news/data/news_repository.dart';
import 'package:getx_clean_architecture/domain/news/data/model/news_model.dart';

class HomeController extends GetxController {
  final NewsRepository newsRep;

  HomeController({required this.newsRep});

  final Rx<NewsModel?> newsModel = Rx<NewsModel?>(null);

  Future<void> fetchWorldNews() async {
    try {
      final newsModel = await newsRep.getWorldNews();
      print("In fetch worldnews");
      print(newsModel);
    } catch (e) {
      print('Error fetching news articles: $e');
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchWorldNews();
  }
}
