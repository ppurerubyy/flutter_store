import 'package:shop/data/models/product.dart';

abstract class HomeEvent {}

class HomeLoadEvent implements HomeEvent {
  final bool reload;

  const HomeLoadEvent({this.reload = false});
}

class HomeLoadedEvent implements HomeEvent {
  final List<Product> products;

  const HomeLoadedEvent(this.products);
}

class HomeLoadingEvent implements HomeEvent {

  const HomeLoadingEvent();
}


class ErrorEvent implements HomeEvent {
  final String errorInfo;

  const ErrorEvent(this.errorInfo);
}