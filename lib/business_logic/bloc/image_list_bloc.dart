import 'package:dogs_list/business_logic/bloc/image_state.dart';
import 'package:dogs_list/business_logic/bloc/images_event.dart';
import 'package:dogs_list/data/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageListBloc extends Bloc<ImageEvent, ImageState> {
  ImageListBloc(this.repository) : super(InitialState())  {

    on<LoadingImageEvent>((event, emit) async  {
      late final images;
      try{
        emit(LoadingState());
        images =  await repository.fetchImages(event.breed);
      }
      catch(e){
        emit(ErrorState(e));
      }
      emit(LoadedState(images));
    });
  }

  final Repository repository;
}