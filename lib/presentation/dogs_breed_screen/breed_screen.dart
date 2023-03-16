import 'package:dogs_list/business_logic/bloc/breed_list_bloc.dart';
import 'package:dogs_list/data/repository/repository.dart';
import 'package:dogs_list/presentation/dogs_breed_screen/breed_layout.dart';
import 'package:dogs_list/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BreedScreen extends StatelessWidget {
  const BreedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => DogListBloc(getIt<Repository>()),
      child: const BreedLayout(),);
  }
}