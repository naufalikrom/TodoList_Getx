import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:porto_todolist_getx/app/data/service/storage/services.dart';
import 'package:porto_todolist_getx/app/modules/home/binding.dart';
import 'package:porto_todolist_getx/app/modules/home/view.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';


void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init(),);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Todo List GetX',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );
  }
}

