import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class Heroes {
  final String name;
  final String status;
  final String pathImage;
  late Color color;

  Heroes({required this.name, required this.status, required this.pathImage}) {
    color = Colors.white;
    Future<PaletteGenerator> pallet = PaletteGenerator.fromImageProvider(
      NetworkImage(pathImage),
      maximumColorCount: 20,
    );

    pallet.then((pallet) {
      color = pallet.dominantColor != null
          ? pallet.dominantColor!.color
          : Colors.white;
    });
  }

  factory Heroes.fromJson(Map<String, dynamic> response) {
    var netPathImage = response['thumbnail']['path'] +
        "." +
        response['thumbnail']['extension'];

    return Heroes(
      name: response['name'] as String,
      status: response['description'] as String,
      pathImage: netPathImage,
    );
  }
}
