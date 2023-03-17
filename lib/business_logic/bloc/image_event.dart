import 'package:dogs_list/data/model/breed_model.dart';

abstract class ImageEvent {

}

class LoadingImageEvent extends ImageEvent {
  LoadingImageEvent(this.breed);
    final Breed breed;
}