part of 'home_bloc.dart';

sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeCategoryClickedEvent extends HomeEvent {
  final int selected;
  HomeCategoryClickedEvent({required this.selected});
}
