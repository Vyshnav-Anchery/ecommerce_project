part of 'home_bloc.dart';

sealed class HomeState {}

final class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

final class HomeCategoryChangedActionState extends HomeActionState {}
