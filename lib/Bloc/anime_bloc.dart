import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/Api/anim_api.dart';
import '../Repository/ModelClass/AnimeModel.dart';

part 'anime_event.dart';
part 'anime_state.dart';

class AnimeBloc extends Bloc<AnimeEvent, AnimeState> {
 late AnimeModel animeModel;
 AnimApi animApi=AnimApi();
  AnimeBloc() : super(AnimeInitial()) {
    on<AnimeEvent>((event, emit)  async {
      emit (AnimeBlocLoading());
          try{
            animeModel= await animApi.getanime();
            emit(AnimeBlocLoaded());

          }
          catch(a){
            emit(AnimeBlocError());


          }
      // TODO: implement event handler
    });
  }
}
