import 'package:flutter/material.dart';
import '../network/marvel_api.dart';
import '../providers/change_color.dart';
import '../widgets/slider_heroes.dart';
import 'constans.dart';
import 'widgets/background_triangle.dart';
import 'package:provider/provider.dart';

void main() {
  Color bgColor = Colors.blue;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<MyApp> {
  var listIdHeroes;

  @override
  void initState() {
    super.initState();

    listIdHeroes = MarvelApi().getIdHeroes(25);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 38, 43),
        body: ChangeNotifierProvider(
          create: (context) => ChangeColor(),
          child: Stack(
            fit: StackFit.expand,
            children: [
              BackgroundTriangle(),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/marvel_logo.png",
                        height: 100,
                        width: 300,
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text("Выбери своего героя",
                              style: standartStyle)),
                      FutureBuilder<List<int>>(
                          future: listIdHeroes,
                          builder: (context, listId) {
                            if (listId.hasData) {
                              return Expanded(
                                  child: SliderHeroes(listId.data!));
                            }
                            if (listId.hasError) {
                              return Center(
                                child: Text(
                                  listId.error.toString(),
                                  style: titleStyle,
                                ),
                              );
                            }
                            return const Center(
                                child: CircularProgressIndicator());
                          })
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
