import 'package:dogs_list/presentation/dogs_breed_screen/breed_screen.dart';
import 'package:dogs_list/setup_service_locator.dart';
import 'package:flutter/material.dart';



void main() {
  setupServiceLocator();
  runApp(const BreedScreen());
}
//1) Добавить в правильном месте по нажатию на породу навигацию
//пойти внутрь виджета с породами