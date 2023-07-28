import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';

class MainRepository {
  static Future<Object> chkService(object) async {
    var body = json.encode(object);
    var response = await http.post(Uri.parse(CHK_SERVICE),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: body
    );
    print(response.body);
    return jsonDecode(utf8.decode(response.bodyBytes));
  }

  static Future<Object> getMembership(object) async {
    var body = json.encode(object);
    var response = await http.post(Uri.parse(GET_MEMBERSHIP),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: body
    );
    return jsonDecode(utf8.decode(response.bodyBytes));
  }
}