import 'dart:convert';

import 'package:shop/data/api_service.dart';
import 'package:shop/data/models/dto/product_dto.dart';
import 'package:shop/data/models/mappers/shop_mappers.dart';
import 'package:shop/data/models/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();
}

class ProductRepositoryImpl implements ProductRepository {
  ApiService apiService = ApiService.create();

  @override
  Future<List<Product>> getProducts() async {
    final response = await apiService.getProducts();
    var body = response.body;
    Iterable product = json.decode(body);
    List<ProductDto> products =
        List<ProductDto>.from(product.map((e) => ProductDto.fromJson(e)));
    return products.map((e) => e.mapFromDto()).toList();
  }
}
