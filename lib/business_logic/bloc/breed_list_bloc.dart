import 'package:dogs_list/business_logic/bloc/breed_event.dart';
import 'package:dogs_list/business_logic/bloc/breed_state.dart';
import 'package:dogs_list/data/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DogListBloc extends Bloc<DogEvent, BreedState> {
  DogListBloc(this.repository) : super(InitialState())  {

    on<LoadingDogsEvent>((event, emit) async  {
      late final breeds;
      try{
        emit(LoadingState());
        breeds =  await repository.fetchBreeds();
      }
      catch(e){
        emit(ErrorState(e));
      }
      emit(LoadedState(breeds));
    });
  }

  final Repository repository;
}