import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/controller.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Movies'),
        ),
        body: Obx(
          () => !controller.isLoad.value
              ? ListView.builder(
                  itemCount: controller.movie.value.results!.length,
                  itemBuilder: (context, index) {
                    var result = controller.movie.value.results![index];
                    return Card(
                      color: Colors.grey.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            ListTile(
                                title: Text(result.title ?? 'No Name Defined'),
                                subtitle: Text(result.overview.toString())),
                          ],
                        ),
                      ),
                    );
                  })
              : const Center(child: CircularProgressIndicator()),
        ));
  }
}
