import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wishlist_details_event.dart';
part 'wishlist_details_state.dart';

class WishlistDetailsBloc extends Bloc<WishlistDetailsEvent, WishlistDetailsState> {
  WishlistDetailsBloc() : super(WishlistDetailsInitial()) {
    on<WishlistDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
