import 'package:dogs_list/business_logic/provider/fetchimages_provider.dart';
import 'package:dogs_list/data/model/breed_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DogsImagesLayout extends StatefulWidget {
  const DogsImagesLayout({super.key, required this.breed});

  final Breed breed;

  @override
  State<DogsImagesLayout> createState() => _DogsImagesLayoutState();
}

class _DogsImagesLayoutState extends State<DogsImagesLayout> {
  static const thickness = 4.0;
  static const title = 'Image Screen';

  @override
  void initState() {
    final provider = context.read<ImagesProvider>();
    provider.fetchImages(widget.breed);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final imageList = context.watch<ImagesProvider>().imagesList;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          backgroundColor: Colors.black,
        ),
        body: ListView.separated(
          itemBuilder: (_, index) => Image.network(imageList[index]),
          separatorBuilder: (_, __) => const Divider(
            thickness: thickness,
          ),
          itemCount: (imageList.length),
        ),
      ),
    );
  }
}
