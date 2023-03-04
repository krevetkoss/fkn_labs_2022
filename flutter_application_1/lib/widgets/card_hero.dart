import 'package:flutter/material.dart';
import '../constans.dart';
import '../models/heroes.dart';

class CardHero extends StatelessWidget {
  Heroes _hero;

  CardHero(this._hero);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
            elevation: 0.6,
            clipBehavior: Clip.hardEdge,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Stack(fit: StackFit.expand, children: [
              SizedBox.expand(
                  child: Image.asset(
                _hero.pathImage,
                fit: BoxFit.cover,
              )),
              Positioned(
                  bottom: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      _hero.name,
                      style: titleStyle,
                    ),
                  )),
            ])));
  }
}
