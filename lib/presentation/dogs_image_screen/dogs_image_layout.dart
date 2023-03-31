import 'package:dogs_list/business_logic/bloc/image_list_bloc.dart';
import 'package:dogs_list/business_logic/bloc/image_state.dart';
import 'package:dogs_list/business_logic/bloc/images_event.dart';
import 'package:dogs_list/data/model/breed_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DogsImagesLayout extends StatefulWidget {
  const DogsImagesLayout({super.key, required this.breed});
  final Breed breed;
  @override
  State<DogsImagesLayout> createState() => _DogsImagesLayoutState();
}

class _DogsImagesLayoutState extends State<DogsImagesLayout> {

  @override

  void initState() {
    context.read<ImageListBloc>().add(LoadingImageEvent(widget.breed));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ImageScreen'),
          backgroundColor: Colors.black,
        ),
        body: BlocBuilder<ImageListBloc, ImageState>(
          builder: (context, state) {
            if (state is InitialState){
              return const Center(child: Text("Waiting"));
            }else
            if (state is LoadingState){
              return const Center(child: CircularProgressIndicator());
            }else
            if (state is ErrorState) {
              return const Center (child: Text("error"));
            }else
            if (state is LoadedState){
              return ListView.separated(
                  itemBuilder:  (_, index) => Image.network(state.imageList[index]),
                  separatorBuilder: (_, __) => const Divider(thickness: 4,),
                  itemCount: (state.imageList.length));
            }else {
              throw Exception('unprocessed state $state in DogListLayout');
            }
          },
        ),
      ),

    );
  }
}

