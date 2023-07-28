import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sparkplus_project_modify_flutter/components/args/one_main_opt.dart';
import 'package:sparkplus_project_modify_flutter/models/get_main_product.dart';
import 'package:sparkplus_project_modify_flutter/repositories/get_main_product_Repository.dart';
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';


class OneTimeMainViewModel with ChangeNotifier {
  // Set Instance Location
  String _prod_name01 = '', _prod_name02 = '', _prod_name03 = '', _prod_name04 = '';
  String _prod_fee01 = '', _prod_fee02 = '', _prod_fee03 = '', _prod_fee04 = '';
  String _prod_desc01 = '', _prod_desc02 = '', _prod_desc03 = '', _prod_desc04 = '';
  String _main_img01 = '', _main_img02 = '', _main_img03 = '', _main_img04 = '';
  String _prod_code01 = '', _prod_code02 = '', _prod_code03 = '', _prod_code04 = '';

  String _selectProduct = '';
  String _selectFee = '';
  String _selectPlc = '';
  String _selectCode = '';

  String _pastClick = '';
  
  bool _isSelect = false;

  bool _indicator = false;

  List<GetMainProduct> _product = [];
  // Get Instance Location
  String get prod_name01 => _prod_name01;
  String get prod_name02 => _prod_name02;
  String get prod_name03 => _prod_name03;
  String get prod_name04 => _prod_name04;

  String get prod_fee01 => _prod_fee01;
  String get prod_fee02 => _prod_fee02;
  String get prod_fee03 => _prod_fee03;
  String get prod_fee04 => _prod_fee04;

  String get prod_desc01 => _prod_desc01;
  String get prod_desc02 => _prod_desc02;
  String get prod_desc03 => _prod_desc03;
  String get prod_desc04 => _prod_desc04;

  String get main_img01 => _main_img01;
  String get main_img02 => _main_img02;
  String get main_img03 => _main_img03;
  String get main_img04 => _main_img04;
  
  String get prod_code01 => _prod_code01;
  String get prod_code02 => _prod_code02;
  String get prod_code03 => _prod_code03;
  String get prod_code04 => _prod_code04;

  String get selectProduct => _selectProduct;
  String get selectFee => _selectFee;
  String get selectPlc => _selectPlc;
  String get selectCode => _selectCode;


  String get pastClick => _pastClick;

  bool get isSelect => _isSelect;

  bool get indicator => _indicator;

  List<GetMainProduct> get product => _product;


  // General Instance Location

  // Constructor
  OneTimeMainViewModel() {

  }

  // Setting Instance Definition Location
  set prod_name01(String prod_name01) {
    _prod_name01 = prod_name01;
    notifyListeners();
  }

  set prod_name02(String prod_name02) {
    _prod_name02 = prod_name02;
    notifyListeners();
  }
  
  set prod_name03(String prod_name03) {
    _prod_name03 = prod_name03;
    notifyListeners();
  }

  set prod_name04(String prod_name04) {
    _prod_name04 = prod_name04;
    notifyListeners();
  }

  set prod_fee01(String prod_fee01) {
    _prod_fee01 = prod_fee01;
    notifyListeners();
  }

  set prod_fee02(String prod_fee02) {
    _prod_fee02 = prod_fee02;
    notifyListeners();
  }

  set prod_fee03(String prod_fee03) {
    _prod_fee03 = prod_fee03;
    notifyListeners();
  }

  set prod_fee04(String prod_fee04) {
    _prod_fee04 = prod_fee04;
    notifyListeners();
  }

  set prod_desc01(String prod_desc01) {
    _prod_desc01 = prod_desc01;
    notifyListeners();
  }

  set prod_desc02(String prod_desc02) {
    _prod_desc02 = prod_desc02;
    notifyListeners();
  }

  set prod_desc03(String prod_desc03) {
    _prod_desc03 = prod_desc03;
    notifyListeners();
  }

  set prod_desc04(String prod_desc04) {
    _prod_desc04 = prod_desc04;
    notifyListeners();
  }

  set main_img01(String main_img01) {
    _main_img01 = main_img01;
    notifyListeners();
  }

  set main_img02(String main_img02) {
    _main_img02 = main_img02;
    notifyListeners();
  }

  set main_img03(String main_img03) {
    _main_img03 = main_img03;
    notifyListeners();
  }

  set main_img04(String main_img04) {
    _main_img04 = main_img04;
    notifyListeners();
  }

  set prod_code01(String prod_code01) {
    _prod_code01 = prod_code01;
    notifyListeners();
  }

  set prod_code02(String prod_code02) {
    _prod_code02 = prod_code02;
    notifyListeners();
  }

  set prod_code03(String prod_code03) {
    _prod_code03 = prod_code03;
    notifyListeners();
  }

  set prod_code04(String prod_code04) {
    _prod_code04 = prod_code04;
    notifyListeners();
  }

  set product(List<GetMainProduct> product) {
    _product = product;
    notifyListeners();
  }

  set selectProduct(String selectProduct) {
    _selectProduct = selectProduct;
    notifyListeners();
  }

  set selectFee(String selectFee) {
    _selectFee = selectFee;
    notifyListeners();
  }

  set selectPlc(String selectPlc) {
    _selectPlc = selectPlc;
    notifyListeners();
  }

  set selectCode(String selectCode) {
    _selectCode = selectCode;
    notifyListeners();
  }

  set pastClick(String pastClick) {
    _pastClick = pastClick;
    notifyListeners();
  }

  set isSelect(bool isSelect) {
    _isSelect = isSelect;
    notifyListeners();
  }

  set indicator(bool indicator) {
    _indicator = indicator;
    notifyListeners();
  }

  // Real Proccess Function Location
  getOneTimeProduct() async {
    var response = await GetMainProductRepository.getMainProductInfo({'auth_key': AUTH_KEY, 'pro_type': ONE_TIME});
    product = response as List<GetMainProduct>;
    for(int i = 0; i < product.length; i++) {
      if(i == 0) {
        prod_name01 = product[i].prod_name.toString();
        prod_fee01 = NumberFormat('###,###,###,###').format(int.parse(product[i].prod_fee.toString()));
        prod_desc01 = product[i].prod_desc.toString();
        main_img01 = product[i].main_img.toString();
        prod_code01 = product[i].prod_code.toString();
      }
      if(i == 1) {
        prod_name02 = product[i].prod_name.toString();
        prod_fee02 = NumberFormat('###,###,###,###').format(int.parse(product[i].prod_fee.toString()));
        prod_desc02 = product[i].prod_desc.toString();
        main_img02 = product[i].main_img.toString();
        prod_code02 = product[i].prod_code.toString();
      }
      if(i == 2) {
        prod_name03 = product[i].prod_name.toString();
        prod_fee03 = NumberFormat('###,###,###,###').format(int.parse(product[i].prod_fee.toString()));
        prod_desc03 = product[i].prod_desc.toString();
        main_img03 = product[i].main_img.toString();
        prod_code03 = product[i].prod_code.toString();
      }
      else{
        prod_name04 = product[i].prod_name.toString();
        prod_fee04 = NumberFormat('###,###,###,###').format(int.parse(product[i].prod_fee.toString()));
        prod_desc04 = product[i].prod_desc.toString();
        main_img04 = product[i].main_img.toString();
        prod_code04 = product[i].prod_code.toString();
      }
    }
  }

  selectMenu(String product, String fee, String plc, String img, String code) {
    selectProduct = product;
    selectFee = fee;
    selectPlc = plc;
    selectCode = code;
    print(code);
    if(img.contains(pastClick) && pastClick != '') {
      main_img01 = '1';
      main_img02 = '2';
      main_img03 = '3';
      main_img04 = '4';
      isSelect = false;
      selectProduct = '-';
      selectFee = '-';
      selectPlc = '';
      selectCode = '';
    }else {
      if(img.contains('1')) {
        main_img01 = '1-select';
        main_img02 = '2';
        main_img03 = '3';
        main_img04 = '4';
        isSelect = true;
      }else if(img.contains('2')) {
        main_img01 = '1';
        main_img02 = '2-select';
        main_img03 = '3';
        main_img04 = '4';
        isSelect = true;
      }else if(img.contains('3')) {
        main_img01 = '1';
        main_img02 = '2';
        main_img03 = '3-select';
        main_img04 = '4';
        isSelect = true;
      }else if(img.contains('4')) {
        main_img01 = '1';
        main_img02 = '2';
        main_img03 = '3';
        main_img04 = '4-select';
        isSelect = true;
      }
    }
    pastClick = img;
  }

  isAvailablePayButton(BuildContext context, String carNo) {
    if(isSelect) {
      indicator = true;
      Timer(Duration(seconds: 1), () {
        indicator = false;
        Navigator.pushNamed(context, '/sparkplus/one_time/option', arguments: OneMainOpt(carNo:carNo, prodName: selectProduct, prodFee: selectFee, prodCode: selectCode, plc: selectPlc));
      });
    }
  }

  clear() {
    isSelect = false;
    selectProduct = '-';
    selectFee = '-';
    selectPlc = '';
    selectCode = '';
    pastClick = '';
    product.clear();
  }

}