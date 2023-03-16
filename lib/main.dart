import 'package:dogs_list/presentation/breed_screen.dart';
import 'package:dogs_list/setup_service_locator.dart';
import 'package:flutter/material.dart';



void main() {
  setupServiceLocator();
  runApp(const BreedScreen());
}