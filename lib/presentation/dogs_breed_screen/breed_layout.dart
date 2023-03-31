import 'package:dogs_list/business_logic/provider/fetchbreed_provider.dart';
import 'package:dogs_list/presentation/widget/breed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BreedLayout extends StatefulWidget {
  const BreedLayout({super.key});

  @override
  State<BreedLayout> createState() => _BreedLayoutState();
}

class _BreedLayoutState extends State<BreedLayout> {
  static const thickness = 4.0;
  static const title = 'Dog List Screen';

  @override
  void initState() {
    final provider = context.read<BreedProvider>();
    provider.fetchBreeds();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final breedList = context.watch<BreedProvider>().breedList;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          backgroundColor: Colors.black,
        ),
        body: ListView.separated(
          itemBuilder: (_, index) => BreedWidget(breedList[index]),
          separatorBuilder: (_, __) => const Divider(thickness: thickness),
          itemCount: breedList.length,
        ),
      ),
    );
  }
}
