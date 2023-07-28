import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_opt_menu.freezed.dart';
part 'get_opt_menu.g.dart';

@freezed
class GetOptMenu with _$GetOptMenu{
  const factory GetOptMenu({
    String? option_code,
    String? option_name,
    String? option_fee,
    String? option_img,
    String? option_plc,
  }) = _GetOptMenu;

  factory GetOptMenu.fromJson(Map<String, dynamic> json) => _$GetOptMenuFromJson(json);
}