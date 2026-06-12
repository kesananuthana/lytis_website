import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'title_event.dart';
part 'title_state.dart';

class TitleBloc extends Bloc<TitleEvent, TitleState> {
  TitleBloc() : super(TitleInitial()) {
    on<TitleHoverEvent>(_onHover);
  }
    bool isHover = false;

    void _onHover(TitleHoverEvent event, Emitter<TitleState> emit) {
      isHover = !isHover;
      emit(TitleHover(isHover));
    }

}
