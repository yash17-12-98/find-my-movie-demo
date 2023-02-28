import 'package:get/get.dart';
import '../bindings/bindings.dart';
import '../screens/screens.dart';

List<GetPage> pageRoute = [
  GetPage(
    name: '/',
    page: () => const Home(),
    binding: HomeBinding(),
  )
];
