import 'package:dogs_list/data/model/breed_model.dart';

abstract class ImageState {

}

class InitialState extends ImageState {

}

class LoadingState extends ImageState {

}

class LoadedState extends ImageState {
  LoadedState(this.imageList);
  final List<String> imageList;
}

class ErrorState extends ImageState {
  ErrorState(this.error);

  final Object error;
}