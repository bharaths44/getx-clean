import 'package:get/get.dart';
import 'package:getx_clean_architecture/domain/news/data/news_repository.dart';
import 'package:getx_clean_architecture/presentation/news_screens/business_news/controllers/business_news_controller.dart';

class BusinessNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BusinessNewsController>(
      () => BusinessNewsController(newsRep: Get.find<NewsRepository>()),
    );
  }
}
