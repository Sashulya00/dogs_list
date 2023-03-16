import 'package:dogs_list/data/model/breed_model.dart';
import 'package:flutter/material.dart';


class BreedWidget extends StatelessWidget {
  const BreedWidget(this.breed, {Key? key,}) : super(key: key);
  final Breed breed;

  @override
  Widget build(BuildContext context) {
    return Text(
      breed.fullName,
      style: const TextStyle(fontSize: 30),
    );
  }


}