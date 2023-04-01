import 'package:asbeza/Repositories.dart/repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../components/Food.dart';
import '../components/Food.dart';
import '../components/Food.dart';
import '../components/Food.dart';
import '../screens/Food.dart';

part 'food_event.dart';
part 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final Foodrepositery _foodrepositery;

  FoodBloc(this._foodrepositery) : super(FoodLoadingState()) {
    on<FoodEvent>((event, emit) async {
      // TODO: implement event handler
      emit(FoodLoadingState());
    });
  }
}
