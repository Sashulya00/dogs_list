import 'package:flutter/material.dart';

void main() => runApp(DogsListApp());

class DogsListApp extends StatelessWidget {
   DogsListApp({super.key});

  final breeds = [
    'breed1',
    'breed2',
    'breed3',
    'breed4',
    'breed5',
    'breed6',
    'breed1',
    'breed1',
    'breed1',
    'breed1',
    'breed1',
    'breed1',
    'breed1',
    'breed1',
    'breed1',
    'breed1',
    'breed1',
    'breed1',
  ];

  static const screenTitle = "DogsList";
  static const textParameters =  TextStyle(fontSize: 34);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: screenTitle,
      home: Scaffold(
        body: Center(
            child: ListView.separated(
          itemCount: breeds.length,
          separatorBuilder: (__, _) => const Divider(thickness: 5, height: 20),
          itemBuilder: (__, int index) {
            return Column(
              children: [
                Text(breeds[index], style: textParameters),
              ],
            );
          },
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
