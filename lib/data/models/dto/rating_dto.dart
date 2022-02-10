import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_dto.freezed.dart';
part 'rating_dto.g.dart';

@freezed
class RatingDto with _$RatingDto {
  factory RatingDto ({
    required double rate,
    required int count,
  }) = _RatingDto;

  factory RatingDto.fromJson(Map<String, dynamic> json) => _$RatingDtoFromJson(json);
}