import 'package:get/get.dart';
import '../models/models.dart';
import '../service/service.dart';
import 'controller.dart';

class HomeController extends BaseController {
  Rx<Movie> movie = Movie().obs;
  final networkService = NetworkApiService();

  @override
  void onInit() {
    fetchTrendingMovies();
    super.onInit();
  }

  Future<void> fetchTrendingMovies() async {
    isLoad.value = true;
    var response = await networkService.getResponse(APIEndpoint.trending);
    isLoad.value = false;
    movie.value = Movie.fromJson(response);
  }
}
