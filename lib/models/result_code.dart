import 'package:freezed_annotation/freezed_annotation.dart';
part 'result_code.freezed.dart';
part 'result_code.g.dart';

@freezed
class ResultCode with _$ResultCode {
  const factory ResultCode({
    String? result_code,
  }) = _ResultCode;

  factory ResultCode.fromJson(Map<String, dynamic> json) => _$ResultCodeFromJson(json);
}