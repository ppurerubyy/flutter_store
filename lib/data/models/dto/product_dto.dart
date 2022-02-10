import 'package:freezed_annotation/freezed_annotation.dart';

import 'rating_dto.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  factory ProductDto({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required RatingDto rating,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);
}