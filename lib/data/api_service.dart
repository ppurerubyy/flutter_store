import "dart:async";

import 'package:chopper/chopper.dart';

part "api_service.chopper.dart";

@ChopperApi()
abstract class ApiService extends ChopperService {
  @Get(path: '/products')
  Future<Response> getProducts();

  static ApiService create() {
    final client = ChopperClient(
        baseUrl: 'https://fakestoreapi.com',
        services: [
          _$ApiService(),
        ],);
    return _$ApiService(client);
  }
}
