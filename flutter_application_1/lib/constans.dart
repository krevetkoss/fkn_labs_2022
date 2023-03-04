import 'package:flutter/material.dart';

import 'models/heroes.dart';

const TextStyle standartStyle =
    TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

const TextStyle titleStyle =
    TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);

final List<Heroes> marvelHeroes = [
  Heroes('Capitan America', '', 'assets/cap_america.jpg', Colors.brown),
  Heroes('Spider Man', '', 'assets/spider_man.jpg', Colors.blueGrey),
  Heroes('Vision', '', 'assets/vision.jpg', Colors.deepOrange),
  Heroes('Ant-Man', '', 'assets/ant_man.jpg', Colors.teal),
];
