import 'package:dogs_list/data/model/breed_model.dart';
import 'package:dogs_list/presentation/dogs_image_screen/dogs_image_screen.dart';
import 'package:flutter/material.dart';

class BreedWidget extends StatelessWidget {
  const BreedWidget(
    this.breed, {
    Key? key,
  }) : super(key: key);
  final Breed breed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DogsImagesScreen()),
        );
      },
      child: Text(
        breed.fullName,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}
