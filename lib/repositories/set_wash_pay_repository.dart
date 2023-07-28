import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';

class SetWashPayRepository {
  static Future<Object> setWashPay(object) async {
    var body = json.encode(object);
    var response = await http.post(Uri.parse(SET_WASH_PAY),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: body,
    );
    Map<String, dynamic> result = jsonDecode(utf8.decode(response.bodyBytes));
    return result;
  }

  static Future<Object> setApprovalPay(object) async {
    var body = json.encode(object);
    var response = await http.post(Uri.parse(SET_APPROVAL_PAY),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: body,
    );
    Map<String, dynamic> result = jsonDecode(utf8.decode(response.bodyBytes));
    return result;
  }

  static Future<Object> setMembershipPay(object) async {
    var body = json.encode(object);
    var response = await http.post(Uri.parse(SET_MEMBERSHIP_PAY),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: body,
    );
    Map<String, dynamic> result = jsonDecode(utf8.decode(response.bodyBytes));
    return result;
  }
}