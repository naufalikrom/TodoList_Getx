import 'package:porto_todolist_getx/app/data/models/tasks.dart';
import 'package:porto_todolist_getx/app/data/providers/tasks/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;

  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
