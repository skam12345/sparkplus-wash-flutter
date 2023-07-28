
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chk_service_model.freezed.dart';
part 'chk_service_model.g.dart';

@freezed
class ChkServiceModel with _$ChkServiceModel {
  const factory ChkServiceModel({
    String? is_membership,
    String? is_fleet_pay,
    String? is_fleet_dc,
    String? is_member,
    String? prom_taxi,
    String? prom_oneplus,
    String? plc_brush
  }) = _ChkServiceModel;

  factory ChkServiceModel.fromJson(Map<String, dynamic> json) => _$ChkServiceModelFromJson(json);
}