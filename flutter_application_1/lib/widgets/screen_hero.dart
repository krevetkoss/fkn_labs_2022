import 'package:flutter/material.dart';

import '../constans.dart';
import '../models/heroes.dart';

class ScreenHero extends StatelessWidget {
  final Heroes _hero;

  ScreenHero(this._hero);
  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: _hero.name,
        child: Scaffold(
          body: Stack(fit: StackFit.expand, children: [
            SizedBox.expand(
                child: Image.network(
              _hero.pathImage,
              fit: BoxFit.cover,
            )),
            const Positioned(
                top: 45,
                left: 10,
                child: BackButton(
                  color: Colors.white,
                )),
            Positioned(
                bottom: 10,
                left: 10,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _hero.name,
                      style: titleStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        _hero.status,
                        softWrap: true,
                        style: subtitleStyle,
                      ),
                    )
                  ],
                ))
          ]),
        ));
  }
}
