import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/sports_news/controllers/sports_news_controller.dart';

class SportsNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SportsNewsController>(
      () => SportsNewsController(),
    );
  }
}