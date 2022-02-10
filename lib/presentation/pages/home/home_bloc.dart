import 'package:bloc/bloc.dart';
import 'package:shop/data/models/product.dart';
import 'package:shop/domain/repositories/product_repository.dart';

import 'events/home_events.dart';
import 'state/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProductRepository repository;

  HomeBloc({required this.repository}) : super(HomeState.initial()) {
    on<HomeLoadEvent>(_loadEvent);
    on<HomeLoadedEvent>(_loadedEvent);
    on<ErrorEvent>(_errorEvent);
  }



  void _loadEvent(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    final List<Product> products = await repository.getProducts();
    emit(
      state.copyWith(
        productDto: products,
      ),
    );
  }

  void _loadedEvent(
      HomeLoadedEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(
      productDto: event.products
    ));
  }

  void _errorEvent(
    ErrorEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(
      productDto: [],
    ));
  }
}
