import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'product_details_event.dart';
part 'product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailsBloc() : super(ProductDetailsInitial()) {
    on<ProductDetailsEvent>(productDetailsEvent);
  }

  FutureOr<void> productDetailsEvent(
      ProductDetailsEvent event, Emitter<ProductDetailsState> emit) {}
}
