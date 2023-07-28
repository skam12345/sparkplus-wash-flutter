import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';

class SetWashUseRepository {
  static Future<Object> setWashUse(object) async {
    var body = json.encode(object);
    var response = await http.post(Uri.parse(SET_WASH_USE),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: body,
    );

    Map<String, dynamic> result = jsonDecode(utf8.decode(response.bodyBytes));
    return result;
  }

  static Future<Object> setWashCtl(object) async {
    var body = json.encode(object);
    var response = await http.post(Uri.parse(SET_WASH_CTL),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: body,
    );
    Map<String, dynamic> result = jsonDecode(utf8.decode(response.bodyBytes));
    return result;
  }

  static Future<Object> chkgoWash(object) async {
    var body = json.encode(object);
    var response = await http.post(Uri.parse(CHK_GO_WASH),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: body,
    );

    Map<String, dynamic> result = jsonDecode(utf8.decode(response.bodyBytes));
    return result;
  }
}