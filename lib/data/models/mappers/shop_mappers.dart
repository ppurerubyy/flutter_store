import 'package:shop/data/models/dto/product_dto.dart';
import 'package:shop/data/models/dto/rating_dto.dart';
import 'package:shop/data/models/product.dart';
import 'package:shop/data/models/rating.dart';

extension ProductMapper on ProductDto {
  Product mapFromDto() => Product(
        id: id,
        title: title,
        price: price,
        description: description,
        category: category,
        image: image,
        rating: rating.mapFromDto(),
      );
}

extension RatingMapper on RatingDto {
  Rating mapFromDto() => Rating(
        rate: rate,
        count: count,
      );
}
