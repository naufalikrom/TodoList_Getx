
import 'package:get/get.dart';
import 'package:porto_todolist_getx/app/data/providers/tasks/provider.dart';
import 'package:porto_todolist_getx/app/data/service/storage/repository.dart';
import 'package:porto_todolist_getx/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
      taskRepository: TaskRepository(
        taskProvider: TaskProvider(),
      ),
    ));
    }
}