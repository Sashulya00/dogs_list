import 'package:dogs_list/business_logic/provider/fetchimages_provider.dart';
import 'package:dogs_list/data/model/breed_model.dart';
import 'package:dogs_list/data/repository/repository.dart';
import 'package:dogs_list/presentation/dogs_image_screen/dogs_image_layout.dart';
import 'package:dogs_list/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DogsImagesScreen extends StatelessWidget {
  const DogsImagesScreen({super.key, required this.breed});

  final Breed breed;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ImagesProvider(getIt<Repository>()),
      child: DogsImagesLayout(breed: breed),
    );
  }
}
