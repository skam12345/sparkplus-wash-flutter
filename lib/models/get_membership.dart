
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_membership.freezed.dart';
part 'get_membership.g.dart';

@freezed
class GetMembership with _$GetMembership {
  factory GetMembership({
    String? prod_code,
    String? prod_name,
    String? is_brush,
  }) = _GetMembership;

  factory GetMembership.fromJson(Map<String, dynamic> json) => _$GetMembershipFromJson(json);
}