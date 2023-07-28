import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sparkplus_project_modify_flutter/models/get_opt_menu.dart';
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';

class GetOptMenuRepository {
  static Future<Object> getOptMenuInfo(object) async {
    var body = json.encode(object);
    var response = await http.post(Uri.parse(GET_OPT_MENU),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: body);
      String data = response.body.replaceAll('}', '},');
      data = data.replaceAll('},]', '}]');
      List<int> bytes = utf8.encode(data);
      return jsonDecode(utf8.decode(bytes))
                .map<GetOptMenu>((json) => GetOptMenu.fromJson(json))
                .toList();

  }
}