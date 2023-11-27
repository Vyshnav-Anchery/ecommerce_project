import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int selectedIndex = 0;
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeCategoryClickedEvent>(homeCategoryClickedEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) {
    emit(HomeInitial());
  }

  FutureOr<void> homeCategoryClickedEvent(
      HomeCategoryClickedEvent event, Emitter<HomeState> emit) {
    selectedIndex = event.selected;
    log(selectedIndex.toString());
    emit(HomeCategoryChangedActionState());
  }
}
