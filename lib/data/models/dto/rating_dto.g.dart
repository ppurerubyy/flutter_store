// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RatingDto _$$_RatingDtoFromJson(Map<String, dynamic> json) => _$_RatingDto(
      rate: (json['rate'] as num).toDouble(),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_RatingDtoToJson(_$_RatingDto instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
