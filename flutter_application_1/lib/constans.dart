import 'package:flutter/material.dart';

import 'models/heroes.dart';

const TextStyle standartStyle =
    TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

const TextStyle titleStyle =
    TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);

const TextStyle subtitleStyle =
    TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold);

final List<Heroes> marvelHeroes = [
  Heroes(
      'Capitan America',
      'I am Capitan America!',
      'https://i.pinimg.com/originals/d7/bb/93/d7bb93ead29f8296df1d7290d49449f6.jpg',
      Colors.brown),
  Heroes(
      'Spider Man',
      'У всех есть тайны. Что-то скрываем мы, что-то скрывают от нас.',
      'https://phonoteka.org/uploads/posts/2021-07/thumbs/1625699340_6-phonoteka-org-p-chelovek-pauk-krutoi-art-krasivo-6.jpg',
      Colors.blueGrey),
  Heroes(
      'Vision',
      'Я стрелял в того, кого искренне считал своим другом.',
      'https://i.pinimg.com/originals/d6/08/7e/d6087e3bfaa62a7c94be7fdc8bc7fab1.jpg',
      Colors.deepOrange),
  Heroes(
      'Ant-Man',
      'Я свято верю в право каждого на искупление.',
      'https://i.pinimg.com/originals/c4/77/88/c4778879adfca03e7f82e5084bfc2731.jpg',
      Colors.teal),
];
