import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_address.freezed.dart';
part 'vo_address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    required String fullAddress,
    required String simpleAddress,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
