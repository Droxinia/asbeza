import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'asbeza_event.dart';
part 'asbeza_state.dart';

class AsbezaBloc extends Bloc<AsbezaEvent, AsbezaState> {
  AsbezaBloc() : super(AsbezaInitial()) {
    on<AsbezaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
