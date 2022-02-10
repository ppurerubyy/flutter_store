// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rating_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatingDto _$RatingDtoFromJson(Map<String, dynamic> json) {
  return _RatingDto.fromJson(json);
}

/// @nodoc
class _$RatingDtoTearOff {
  const _$RatingDtoTearOff();

  _RatingDto call({required double rate, required int count}) {
    return _RatingDto(
      rate: rate,
      count: count,
    );
  }

  RatingDto fromJson(Map<String, Object?> json) {
    return RatingDto.fromJson(json);
  }
}

/// @nodoc
const $RatingDto = _$RatingDtoTearOff();

/// @nodoc
mixin _$RatingDto {
  double get rate => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingDtoCopyWith<RatingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingDtoCopyWith<$Res> {
  factory $RatingDtoCopyWith(RatingDto value, $Res Function(RatingDto) then) =
      _$RatingDtoCopyWithImpl<$Res>;
  $Res call({double rate, int count});
}

/// @nodoc
class _$RatingDtoCopyWithImpl<$Res> implements $RatingDtoCopyWith<$Res> {
  _$RatingDtoCopyWithImpl(this._value, this._then);

  final RatingDto _value;
  // ignore: unused_field
  final $Res Function(RatingDto) _then;

  @override
  $Res call({
    Object? rate = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RatingDtoCopyWith<$Res> implements $RatingDtoCopyWith<$Res> {
  factory _$RatingDtoCopyWith(
          _RatingDto value, $Res Function(_RatingDto) then) =
      __$RatingDtoCopyWithImpl<$Res>;
  @override
  $Res call({double rate, int count});
}

/// @nodoc
class __$RatingDtoCopyWithImpl<$Res> extends _$RatingDtoCopyWithImpl<$Res>
    implements _$RatingDtoCopyWith<$Res> {
  __$RatingDtoCopyWithImpl(_RatingDto _value, $Res Function(_RatingDto) _then)
      : super(_value, (v) => _then(v as _RatingDto));

  @override
  _RatingDto get _value => super._value as _RatingDto;

  @override
  $Res call({
    Object? rate = freezed,
    Object? count = freezed,
  }) {
    return _then(_RatingDto(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RatingDto implements _RatingDto {
  _$_RatingDto({required this.rate, required this.count});

  factory _$_RatingDto.fromJson(Map<String, dynamic> json) =>
      _$$_RatingDtoFromJson(json);

  @override
  final double rate;
  @override
  final int count;

  @override
  String toString() {
    return 'RatingDto(rate: $rate, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RatingDto &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$RatingDtoCopyWith<_RatingDto> get copyWith =>
      __$RatingDtoCopyWithImpl<_RatingDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingDtoToJson(this);
  }
}

abstract class _RatingDto implements RatingDto {
  factory _RatingDto({required double rate, required int count}) = _$_RatingDto;

  factory _RatingDto.fromJson(Map<String, dynamic> json) =
      _$_RatingDto.fromJson;

  @override
  double get rate;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$RatingDtoCopyWith<_RatingDto> get copyWith =>
      throw _privateConstructorUsedError;
}
