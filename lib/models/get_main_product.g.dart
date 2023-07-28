// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_main_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetMainProduct _$$_GetMainProductFromJson(Map<String, dynamic> json) =>
    _$_GetMainProduct(
      prod_code: json['prod_code'] as String?,
      prod_name: json['prod_name'] as String?,
      prod_fee: json['prod_fee'] as String?,
      main_img: json['main_img'] as String?,
      main_plc: json['main_plc'] as String?,
      prod_remarks: json['prod_remarks'] as String?,
      dc_fee: json['dc_fee'] as String?,
      prod_desc: json['prod_desc'] as String?,
    );

Map<String, dynamic> _$$_GetMainProductToJson(_$_GetMainProduct instance) =>
    <String, dynamic>{
      'prod_code': instance.prod_code,
      'prod_name': instance.prod_name,
      'prod_fee': instance.prod_fee,
      'main_img': instance.main_img,
      'main_plc': instance.main_plc,
      'prod_remarks': instance.prod_remarks,
      'dc_fee': instance.dc_fee,
      'prod_desc': instance.prod_desc,
    };
