import 'package:dogs_list/business_logic/bloc/image_list_bloc.dart';
import 'package:dogs_list/data/model/breed_model.dart';
import 'package:dogs_list/data/repository/repository.dart';
import 'package:dogs_list/presentation/dogs_image_screen/dogs_image_layout.dart';
import 'package:dogs_list/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DogsImagesScreen extends StatelessWidget {
  const DogsImagesScreen({super.key, required this.breed});
  final Breed breed;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => ImageListBloc(getIt<Repository>()),
        child: DogsImagesLayout(breed: breed,));
  }
}
