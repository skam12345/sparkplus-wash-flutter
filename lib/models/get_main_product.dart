import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_main_product.freezed.dart';
part 'get_main_product.g.dart';

@freezed
class GetMainProduct with _$GetMainProduct {
  const factory GetMainProduct({
    String? prod_code,
    String? prod_name,
    String? prod_fee,
    String? main_img,
    String? main_plc,
    String? prod_remarks,
    String? dc_fee,
    String? prod_desc,
  }) = _GetMainProduct;

  factory GetMainProduct.fromJson(Map<String, dynamic> json) => _$GetMainProductFromJson(json);
}