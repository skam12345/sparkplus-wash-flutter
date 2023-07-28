import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';

class UpdateMergeCtlRepository {
  static Future<Object> updateMergeControl(object) async {
    var body = json.encode(object);
    var response = await http.post(Uri.parse(UPDATE_MERGE_CTL),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: body,
    );

    Map<String, dynamic> result = jsonDecode(utf8.decode(response.bodyBytes));
    return result;
  }

  static Future<Object> setMemUse(object) async {
    var body = json.encode(object);
    var response = await http.post(Uri.parse(SET_MEM_USE),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: body,
    );

    Map<String, dynamic> result = jsonDecode(utf8.decode(response.bodyBytes));
    return result;
  }
}