import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'icons_event.dart';
part 'icons_state.dart';

class IconsBloc extends Bloc<IconsEvent, IconsState> {
  IconsBloc() : super(IconsInitial()) {
    on<IconsHoverEvent>(onIconsHover);
  }

  bool isHover=false;
   void onIconsHover(IconsHoverEvent event,Emitter<IconsState> emit){
      isHover=!isHover;
      emit(IconsHover(isHover));
   }
}
