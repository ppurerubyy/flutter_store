import 'package:shop/data/models/product.dart';

class HomeState {
  final List<Product> productDto;

  factory HomeState.initial() {
    return const HomeState(productDto: []);
  }

//<editor-fold desc="Data Methods">

  const HomeState({
    required this.productDto,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HomeState &&
          runtimeType == other.runtimeType &&
          productDto == other.productDto);

  @override
  int get hashCode => productDto.hashCode;

  @override
  String toString() {
    return 'HomeState{' + ' productDto: $productDto,' + '}';
  }

  HomeState copyWith({
    List<Product>? productDto,
  }) {
    return HomeState(
      productDto: productDto ?? this.productDto,
    );
  }

//</editor-fold>
}