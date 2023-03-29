import 'package:dogs_list/business_logic/provider/fetchbreed_provider.dart';
import 'package:dogs_list/data/repository/repository.dart';
import 'package:dogs_list/presentation/dogs_breed_screen/breed_layout.dart';
import 'package:dogs_list/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BreedScreen extends StatelessWidget {
  const BreedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BreedProvider(getIt<Repository>()),
      child: const BreedLayout(),
    );
  }
}
