import 'package:flutter/material.dart';
import 'package:porto_todolist_getx/app/core/value/colors.dart';

import '../app/core/value/icons.dart';

List<Icon> getIcons() {
  return const [
    Icon(
      IconData(personIcon, fontFamily: 'MaterialIcons'),
      color: purple,
    ),
    Icon(IconData(workIcon, fontFamily: 'MaterialIcons'), color: pink),
    Icon(
      IconData(movieIcon, fontFamily: 'MaterialIcons'),
      color: green,
    ),
    Icon(
      IconData(sportIcon, fontFamily: 'MaterialIcons'),
      color: yellow,
    ),
    Icon(
      IconData(travelIcon, fontFamily: 'MaterialIcons'),
      color: deepPink,
    ),
    Icon(
      IconData(shopIcon, fontFamily: 'MaterialIcons'),
      color: lightBlue,
    ),
  ];
}
