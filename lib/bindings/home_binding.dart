import 'package:get/get.dart';
import '../controllers/controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }

}