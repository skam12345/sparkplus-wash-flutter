import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sparkplus_project_modify_flutter/models/get_main_product.dart';
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';

class GetMainProductRepository {
  static Future<Object> getMainProductInfo(object) async {
      var body = json.encode(object);
      var response = await http.post(Uri.parse(GET_MAIN_PRODUCT),
        headers: {"Content-Type": "application/json; charset=UTF-8"},
        body: body);
        String data = response.body.replaceAll("}", "},");
        data = data.substring(0, data.length - 2);
        data += ']';
        List<int> byte = utf8.encode(data);
        return jsonDecode(utf8.decode(byte))
                .map<GetMainProduct>((json) => GetMainProduct.fromJson(json))
                .toList();
  }
}