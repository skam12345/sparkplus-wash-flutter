import 'package:freezed_annotation/freezed_annotation.dart';
part 'is_go.freezed.dart';
part 'is_go.g.dart';

@freezed
class IsGo with _$IsGo {
  const factory IsGo({
    String? is_go,
  }) = _IsGo;

  factory IsGo.fromJson(Map<String, dynamic> json) => _$IsGoFromJson(json);

}