import 'package:flutter/material.dart';
import 'package:sparkplus_project_modify_flutter/models/get_opt_menu.dart';
import 'package:sparkplus_project_modify_flutter/repositories/get_opt_menu_repository.dart';
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';

class OneTimeOptionViewModel with ChangeNotifier {
  // Set instance Location
  String _checkImg = 'assets/product-select-checkNo.png';

  String _option_code01 = '', _option_code02 = '', _option_code03 = '', _option_code04 = '', _option_code05 = '';
  String _option_name01 = '', _option_name02 = '', _option_name03 = '', _option_name04 = '', _option_name05 = '';
  String _option_fee01 = '', _option_fee02 = '', _option_fee03 = '', _option_fee04 = '', _option_fee05 = '';
  String _option_img01 = '', _option_img02 = '', _option_img03 = '', _option_img04 = '', _option_img05 = '';
  String _option_plc01 = '', _option_plc02 = '', _option_plc03 = '', _option_plc04 = '', _option_plc05 = '';
  
  String _select_name = '';
  String _default_name = '';

  int _total_price = 0, _option_price = 0, _default_price = 0;

  bool _check = false;

  bool _option01 = false, _option02 = false, _option03 = false, _option04 = false, _option05 = false;

  bool _select01 = false, _select02 = false, _select03 = false, _select04 = false, _select05 = false;

  bool _indicator = false;

  List<GetOptMenu> _opt = [];
  // Get Instance Location
  String get checkImg => _checkImg;

  String get option_code01 => _option_code01;
  String get option_code02 => _option_code02;
  String get option_code03 => _option_code03;
  String get option_code04 => _option_code04;
  String get option_code05 => _option_code05;

  String get option_name01 => _option_name01;
  String get option_name02 => _option_name02;
  String get option_name03 => _option_name03;
  String get option_name04 => _option_name04;
  String get option_name05 => _option_name05;

  String get option_fee01 => _option_fee01;
  String get option_fee02 => _option_fee02;
  String get option_fee03 => _option_fee03;
  String get option_fee04 => _option_fee04;
  String get option_fee05 => _option_fee05;

  String get option_img01 => _option_img01;
  String get option_img02 => _option_img02;
  String get option_img03 => _option_img03;
  String get option_img04 => _option_img04;
  String get option_img05 => _option_img05;

  String get option_plc01 => _option_plc01;
  String get option_plc02 => _option_plc02;
  String get option_plc03 => _option_plc03;
  String get option_plc04 => _option_plc04;
  String get option_plc05 => _option_plc05;

  String get select_name => _select_name;

  String get default_name => _default_name;

  int get total_price => _total_price;
  int get option_price => _option_price;
  int get default_price => _default_price;

  bool get check => _check;

  bool get option01 => _option01;
  bool get option02 => _option02;
  bool get option03 => _option03;
  bool get option04 => _option04;
  bool get option05 => _option05;

  bool get select01 => _select01;
  bool get select02 => _select02;
  bool get select03 => _select03;
  bool get select04 => _select04;
  bool get select05 => _select05;

  bool get indicator => _indicator;

  List<GetOptMenu> get opt => _opt;
  // Constructor
  OneTimeOptionViewModel() {

  }
  // Setting Instance Definition Location
  set checkImg(String checkImg) {
    _checkImg = checkImg;
    notifyListeners();
  }

  set check(bool check) {
    _check = check;
    notifyListeners();
  }

  set opt(List<GetOptMenu> opt) {
    _opt = opt;
    notifyListeners();
  }

  set option_code01(String option_code01) {
    _option_code01 = option_code01;
    notifyListeners();
  }
  
  set option_code02(String option_code02) {
    _option_code02 = option_code02;
    notifyListeners();
  }
  
  set option_code03(String option_code03) {
    _option_code03 = option_code03;
    notifyListeners();
  }

  set option_code04(String option_code04) {
    _option_code04 = option_code04;
    notifyListeners();
  }

  set option_code05(String option_code05) {
    _option_code05 = option_code05;
    notifyListeners();
  }

  set option_name01(String option_name01) {
    _option_name01 = option_name01;
    notifyListeners();
  }

  set option_name02(String option_name02) {
    _option_name02 = option_name02;
    notifyListeners();
  }

  set option_name03(String option_name03) {
    _option_name03 = option_name03;
    notifyListeners();
  }

  set option_name04(String option_name04) {
    _option_name04 = option_name04;
    notifyListeners();
  }

  set option_name05(String option_name05) {
    _option_name05 = option_name05;
    notifyListeners();
  }

  set option_fee01(String option_fee01) {
    _option_fee01 = option_fee01;
    notifyListeners();
  }

  set option_fee02(String option_fee02) {
    _option_fee02 = option_fee02;
    notifyListeners();
  }

  set option_fee03(String option_fee03) {
    _option_fee03 = option_fee03;
    notifyListeners();
  }

  set option_fee04(String option_fee04) {
    _option_fee04 = option_fee04;
    notifyListeners();
  }

  set option_fee05(String option_fee05) {
    _option_fee05 = option_fee05;
    notifyListeners();
  }

  set option_img01(String option_img01) {
    _option_img01 = option_img01;
    notifyListeners();
  }

  set option_img02(String option_img02) {
    _option_img02 = option_img02;
    notifyListeners();
  }

  set option_img03(String option_img03) {
    _option_img03 = option_img03;
    notifyListeners();
  }

  set option_img04(String option_img04) {
    _option_img04 = option_img04;
    notifyListeners();
  }

  set option_img05(String option_img05) {
    _option_img05 = option_img05;
    notifyListeners();
  }

  set option_plc01(String option_plc01) {
    _option_plc01 = option_plc01;
    notifyListeners();
  }

  set option_plc02(String option_plc02) {
    _option_plc02 = option_plc02;
    notifyListeners();
  }

  set option_plc03(String option_plc03) {
    _option_plc03 = option_plc03;
    notifyListeners();
  }

  set option_plc04(String option_plc04) {
    _option_plc04 = option_plc04;
    notifyListeners();
  }

  set option_plc05(String option_plc05) {
    _option_plc05 = option_plc05;
    notifyListeners();
  }

  set select_name(String select_name) {
    _select_name = select_name;
    notifyListeners();
  }

  set total_price(int total_price) {
    _total_price = total_price;
    notifyListeners();
  }

  set option_price(int option_price) {
    _option_price = option_price;
    notifyListeners();
  }

  set option01(bool option01) {
    _option01 = option01;
    notifyListeners();
  }

  set option02(bool option02) {
    _option02 = option02;
    notifyListeners();
  }

  set option03(bool option03) {
    _option03 = option03;
    notifyListeners();
  }

  set option04(bool option04) {
    _option04 = option04;
    notifyListeners();
  }

  set option05(bool option05) {
    _option05 = option05;
    notifyListeners();
  }

  set select01(bool select01) {
    _select01 = select01;
    notifyListeners();
  }

  set select02(bool select02) {
    _select02 = select02;
    notifyListeners();
  }

  set select03(bool select03) {
    _select03 = select03;
    notifyListeners();
  }

  set select04(bool select04) {
    _select04 = select04;
    notifyListeners();
  }

  set select05(bool select05) {
    _select05 = select05;
    notifyListeners();
  }

  set default_price(int default_price) {
    _default_price = default_price;
    notifyListeners();
  }

  set default_name(String default_name) {
    _default_name = default_name;
    notifyListeners();
  }

  set indicator(bool indicator) {
    _indicator = indicator;
    notifyListeners();
  }
  // General Instance Location
  List<String> select_code = [];
  List<String> select_plc = [];
  List<String> previous = [];

  
  // Real Proccess Function Location
  optionSelectCheck() {
    if(!check) {
      check = true;
      checkImg = 'assets/product-select-checkYes.png';
      option_price = 0;
      total_price = default_price;
      select_name = '';
      option_img01 = option_img01.replaceAll('-select', '');
      option_img02 = option_img02.replaceAll('-select', '');
      option_img03 = option_img03.replaceAll('-select', '');
      option_img04 = option_img04.replaceAll('-select', '');
      option_img05 = option_img05.replaceAll('-select', '');
      previous.clear();
      select_code.clear();
      select_plc.clear();
    }else {
      check = false;
      checkImg = 'assets/product-select-checkNo.png';
    }
  }


  selectOption(String code, String name, String price, String img, String plc) {
    if(name.contains('세라믹왁스')) {
      if(previous.contains(name)) {
        previous.remove(name);
        select01 = false;
        select_code.remove(name);
        select_plc.remove(plc);
        subPrice(int.parse(price));
        select_name = select_name.replaceAll(' + $name', '');
        option_img01 = img.replaceAll('-select', '');
      }else {
        select01 = true;
        select_code.add(code);
        select_plc.add(plc);
        addPrice(int.parse(price));
        select_name += ' + $name';
        option_img01 = '$img-select';
        previous.add(name);
      }
    }else if(name.contains('트리플폼')) {
      if(previous.contains(name)) {
        previous.remove(name);
        select02 = false;
        select_code.remove(name);
        select_plc.remove(plc);
        subPrice(int.parse(price));
        select_name = select_name.replaceAll(' + $name', '');
        option_img02 = img.replaceAll('-select', '');
      }else {
        select02 = true;
        select_code.add(code);
        select_plc.add(plc);
        addPrice(int.parse(price));
        select_name += ' + $name';
        option_img02 = '$img-select';
        previous.add(name);
      }
    }else if(name.contains('하부세차')) {
      if(previous.contains(name)) {
        previous.remove(name);
        select03 = false;
        select_code.remove(name);
        select_plc.remove(plc);
        subPrice(int.parse(price));
        select_name = select_name.replaceAll(' + $name', '');
        option_img03 = img.replaceAll('-select', '');
      }else {
        select03 = true;
        select_code.add(code);
        select_plc.add(plc);
        addPrice(int.parse(price));
        select_name += ' + $name';
        option_img03 = '$img-select';
        previous.add(name);
      }
    }else if(name.contains('휠세척')) {
      if(previous.contains(name)) {
        previous.remove(name);
        select04 = false;
        select_code.remove(name);
        select_plc.remove(plc);
        subPrice(int.parse(price));
        select_name = select_name.replaceAll(' + $name', '');
        option_img04 = img.replaceAll('-select', '');
      }else {
        select04 = true;
        select_code.add(code);
        select_plc.add(plc);
        addPrice(int.parse(price));
        select_name += ' + $name';
        option_img04 = '$img-select';
        previous.add(name);
      }
    }else if(name.contains('버블폼')) {
      if(previous.contains(name)) {
        previous.remove(name);
        select05 = false;
        select_code.remove(name);
        select_plc.remove(plc);
        subPrice(int.parse(price));
        select_name = select_name.replaceAll(' + $name', '');
        option_img05 = img.replaceAll('-select', '');;
      }else {
        select05 = true;
        select_code.add(code);
        select_plc.add(plc);
        addPrice(int.parse(price));
        select_name += ' + $name';
        option_img05 = '$img-select';
        previous.add(name);
      }
    }
  }

  setProductTotal(int price) {
    total_price = price;
    default_price = price;
  }

  setProductName(String name) {
    default_name = name;
  }

  addPrice(int price) {
    total_price += price;
    option_price += price;
  }

  subPrice(int price) {
    total_price -= price;
    option_price -= price;
  }

  setPlc(String plc) {
    select_plc.add(plc);
  }

  clear() {
    option_price = 0;
    total_price = default_price;
    select_name = '';
    option_img01 = option_img01.replaceAll('-select', '');
    option_img02 = option_img02.replaceAll('-select', '');
    option_img03 = option_img03.replaceAll('-select', '');
    option_img04 = option_img04.replaceAll('-select', '');
    option_img05 = option_img05.replaceAll('-select', '');
    previous.clear();
    select_code.clear();
    select_plc.clear();
    opt.clear();
  }

  getOptionProduct(String prod_code) async {
    var response = await GetOptMenuRepository.getOptMenuInfo({'auth_key': AUTH_KEY, 'pro_type': ONE_TIME, 'pin_seq_no': prod_code});
    opt = response as List<GetOptMenu>;
    switch(prod_code) {
      case '1':
        option01 = false;
        option02 = false;
        option03 = false;
        option04 = false;
        option05 = false;
        break;
      case '2':
        option01 = true;
        option02 = false;
        option03 = false;
        option04 = false;
        option05 = false;
        option_code01 = opt[0].option_code.toString();
        option_name01 = opt[0].option_name.toString();
        option_fee01 = opt[0].option_fee.toString();
        option_img01 = opt[0].option_img.toString();
        option_plc01 = opt[0].option_plc.toString();
        break;
      case '3':
        option01 = true;
        option02 = true;
        option03 = true;
        option04 = false;
        option05 = false;
        option_code01 = opt[0].option_code.toString();
        option_name01 = opt[0].option_name.toString();
        option_fee01 = opt[0].option_fee.toString();
        option_img01 = opt[0].option_img.toString();
        option_plc01 = opt[0].option_plc.toString();
        option_code02 = opt[1].option_code.toString();
        option_name02 = opt[1].option_name.toString();
        option_fee02 = opt[1].option_fee.toString();
        option_img02 = opt[1].option_img.toString();
        option_plc02 = opt[1].option_plc.toString();
        option_code03 = opt[2].option_code.toString();
        option_name03 = opt[2].option_name.toString();
        option_fee03 = opt[2].option_fee.toString();
        option_img03 = opt[2].option_img.toString();
        option_plc03 = opt[2].option_plc.toString();
        break;
      default:
        option01 = true;
        option02 = true;
        option03 = true;
        option04 = true;
        option05 = true;
        option_code01 = opt[0].option_code.toString();
        option_name01 = opt[0].option_name.toString();
        option_fee01 = opt[0].option_fee.toString();
        option_img01 = opt[0].option_img.toString();
        option_plc01 = opt[0].option_plc.toString();
        option_code02 = opt[1].option_code.toString();
        option_name02 = opt[1].option_name.toString();
        option_fee02 = opt[1].option_fee.toString();
        option_img02 = opt[1].option_img.toString();
        option_plc02 = opt[1].option_plc.toString();
        option_code03 = opt[2].option_code.toString();
        option_name03 = opt[2].option_name.toString();
        option_fee03 = opt[2].option_fee.toString();
        option_img03 = opt[2].option_img.toString();
        option_plc03 = opt[2].option_plc.toString();
        option_code04 = opt[3].option_code.toString();
        option_name04 = opt[3].option_name.toString();
        option_fee04 = opt[3].option_fee.toString();
        option_img04 = opt[3].option_img.toString();
        option_plc04 = opt[3].option_plc.toString();
        option_code05 = opt[4].option_code.toString();
        option_name05 = opt[4].option_name.toString();
        option_fee05 = opt[4].option_fee.toString();
        option_img05 = opt[4].option_img.toString();
        option_plc05 = opt[4].option_plc.toString();
        break;

    }
  }
}