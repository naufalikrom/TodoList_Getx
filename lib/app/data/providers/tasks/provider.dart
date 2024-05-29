import 'dart:convert';
import 'package:get/get.dart';
import 'package:porto_todolist_getx/app/core/utils/keys.dart';
import 'package:porto_todolist_getx/app/data/models/tasks.dart';
import 'package:porto_todolist_getx/app/data/service/storage/services.dart';

class TaskProvider {
  final StorageService _storage = Get.find<StorageService>();

  // {'tasks': [
  //   {
  //     'title' : 'work',
  //     'color' : '#ff123456',
  //     'icon' : 0xe123,
  //   }
  // ]}

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }
  
  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
