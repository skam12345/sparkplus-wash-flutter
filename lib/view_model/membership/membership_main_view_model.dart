import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sparkplus_project_modify_flutter/models/get_main_product.dart';
import 'package:sparkplus_project_modify_flutter/repositories/get_main_product_repository.dart';
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';

class MembershipMainViewModel with ChangeNotifier {
  // Set Instance Location
  String _secImg = 'assets/product-select-checkNo.png';
  String _memImg = 'assets/product-select-checkNo.png';
  String _sevImg = 'assets/product-select-checkNo.png';

  String _prod_code01 = '', _prod_code02 = '', _prod_code03 = '', _prod_code04 = '';
  String _prod_name01 = '', _prod_name02 = '', _prod_name03 = '', _prod_name04 = '';
  String _prod_fee01 = '', _prod_fee02 = '', _prod_fee03 = '', _prod_fee04 = '';
  String _main_img01 = '', _main_img02 = '', _main_img03 = '', _main_img04 = '';
  String _prod_desc01 = '', _prod_desc02 = '', _prod_desc03 = '', _prod_desc04 = '';
  String _main_plc01 = '', _main_plc02 = '', _main_plc03 = '', _main_plc04 = '';

  String _selectCode = '', _selectProduct = '', _selectFee = '', _selectPlc = '', _pastClick = '';

  String _payImg = 'assets/button-pay-disabled.png';

  bool _showAgreeComponent = false;
  bool _security = false;
  bool _member = false;
  bool _service = false;

  bool _isSelect = false;

  bool _isAvailable = false;

  List<GetMainProduct> _product = [];
  // Get Instance Location
  String get secImg => _secImg;
  String get memImg => _memImg;
  String get sevImg => _sevImg;

  String get prod_code01 => _prod_code01;
  String get prod_code02 => _prod_code02;
  String get prod_code03 => _prod_code03;
  String get prod_code04 => _prod_code04;
  
  String get prod_name01 => _prod_name01;
  String get prod_name02 => _prod_name02;
  String get prod_name03 => _prod_name03;
  String get prod_name04 => _prod_name04;

  String get prod_fee01 => _prod_fee01;
  String get prod_fee02 => _prod_fee02;
  String get prod_fee03 => _prod_fee03;
  String get prod_fee04 => _prod_fee04;

  String get main_img01 => _main_img01;
  String get main_img02 => _main_img02;
  String get main_img03 => _main_img03;
  String get main_img04 => _main_img04;

  String get prod_desc01 => _prod_desc01;
  String get prod_desc02 => _prod_desc02;
  String get prod_desc03 => _prod_desc03;
  String get prod_desc04 => _prod_desc04;

  String get main_plc01 => _main_plc01;
  String get main_plc02 => _main_plc02;
  String get main_plc03 => _main_plc03;
  String get main_plc04 => _main_plc04;

  String get selectCode => _selectCode;
  String get selectProduct => _selectProduct;
  String get selectFee => _selectFee;
  String get selectPlc => _selectPlc;
  String get pastClick => _pastClick;

  String get payImg => _payImg;

  bool get showAgreeComponent => _showAgreeComponent;
  bool get security => _security;
  bool get member => _member;
  bool get service => _service;

  bool get isSelect => _isSelect;

  bool get isAvailable => _isAvailable;

  List<GetMainProduct> get product => _product;

  // Constructor
  MembershipMainViewModel() {
    
  }
  // Setting Insatance Definition Location
  set secImg(String secImg) {
    _secImg = secImg;
    notifyListeners();
  }

  set memImg(String memImg) {
    _memImg = memImg;
    notifyListeners();
  }

  set sevImg(String sevImg) {
    _sevImg = sevImg;
    notifyListeners();
  }

  set showAgreeComponent(bool showAgreeComponent) {
    _showAgreeComponent = showAgreeComponent;
    notifyListeners();
  }

  set security(bool security) {
    _security = security;
    notifyListeners();
  }

  set member(bool member) {
    _member = member;
    notifyListeners();
  }

  set service(bool service) {
    _service = service;
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

  set main_plc01(String main_plc01) {
    _main_plc01 = main_plc01;
    notifyListeners();
  }

  set main_plc02(String main_plc02) {
    _main_plc02 = main_plc02;
    notifyListeners();
  }

  set main_plc03(String main_plc03) {
    _main_plc03 = main_plc03;
    notifyListeners();
  }

  set main_plc04(String main_plc04) {
    _main_plc04 = main_plc04;
    notifyListeners();
  }

  set selectCode(String selectCode) {
    _selectCode = selectCode;
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

  set pastClick(String pastClick) {
    _pastClick = pastClick;
    notifyListeners();
  }

  set product(List<GetMainProduct> product) {
    _product = product;
    notifyListeners();
  }

  set isSelect(bool isSelect) {
    _isSelect = isSelect;
    notifyListeners();
  }
  
  set payImg(String payImg) {
    _payImg = payImg;
    notifyListeners();
  }

  set isAvailable(bool isAvailable) {
    _isAvailable = isAvailable;
    notifyListeners();
  }
  // Real Proccess Funtion Location
  showAgreeContainer() {
    if(!showAgreeComponent) {
      showAgreeComponent = true;
    }
  }

  securityCheck() {
    if(!security) {
      security = true;
      secImg = 'assets/product-select-checkYes.png';
    }else {
      security = false;
      secImg = 'assets/product-select-checkNo.png';
    }
  }

  memberCheck() {
    if(!member) {
      member = true;
      memImg = 'assets/product-select-checkYes.png';
    }else {
      member = false;
      memImg = 'assets/product-select-checkNo.png';
    }
  }

  serviceCheck() {
    if(!service) {
      service = true;
      sevImg = 'assets/product-select-checkYes.png';
    }else {
      service = false;
      sevImg = 'assets/product-select-checkNo.png';
    }
  }

  entireAgreeCheck() {
    secImg = 'assets/product-select-checkYes.png';
    memImg = 'assets/product-select-checkYes.png';
    sevImg = 'assets/product-select-checkYes.png';
    security = true;
    service = true;
    member = true;
    Timer(Duration(milliseconds: 100), () {
      showAgreeComponent = false;
    });
  }

   cancelAgreeCheck() {
    showAgreeComponent = false;
   }

   selectMenu(String product, String fee, String plc, String img, String code) {
    selectProduct = product;
    selectFee = fee;
    selectPlc = plc;
    selectCode = code;
    if(img.contains(pastClick) && pastClick != '') {
      isAvailable = false;
      payImg = 'assets/button-pay-disabled.png';
      main_img01 = '14';
      main_img02 = '15';
      main_img03 = '16';
      main_img04 = '17';
      isSelect = false;
      selectProduct = '-';
      selectFee = '-';
      selectPlc = '';
      selectCode = '';
    }else {
      isAvailable = true;
      payImg = 'assets/button-pay.png';
      if(img.contains('14')) {
        main_img01 = '14-select';
        main_img02 = '15';
        main_img03 = '16';
        main_img04 = '17';
        isSelect = true;
      }else if(img.contains('15')) {
        main_img01 = '14';
        main_img02 = '15-select';
        main_img03 = '16';
        main_img04 = '17';
        isSelect = true;
      }else if(img.contains('16')) {
        main_img01 = '14';
        main_img02 = '15';
        main_img03 = '16-select';
        main_img04 = '17';
        isSelect = true;
      }else if(img.contains('17')) {
        main_img01 = '14';
        main_img02 = '15';
        main_img03 = '16';
        main_img04 = '17-select';
        isSelect = true;
      }
    }
    pastClick = img;
  }

   getMainProductInfo() async {
      Map args = {};
      args['auth_key'] = AUTH_KEY;
      args['pro_type'] = 'PGC002';
      var response = await GetMainProductRepository.getMainProductInfo(args);
      product = response as List<GetMainProduct>;
      for(int i = 0; i < product.length; i++) {
        switch(i) {
          case 0:
            prod_code01 = product[i].prod_code.toString();
            prod_name01 = product[i].prod_name.toString();
            prod_fee01 = NumberFormat('###,###,###,###').format(int.parse(product[i].prod_fee.toString()));
            main_img01 = product[i].main_img.toString();
            prod_desc01 = product[i].prod_desc.toString();
            main_plc01 = product[i].main_plc.toString();
            break;
          case 1:
            prod_code02 = product[i].prod_code.toString();
            prod_name02 = product[i].prod_name.toString();
            prod_fee02 = NumberFormat('###,###,###,###').format(int.parse(product[i].prod_fee.toString()));
            main_img02 = product[i].main_img.toString();
            prod_desc02 = product[i].prod_desc.toString();
            main_plc02 = product[i].main_plc.toString();
            break;
          case 2:
            prod_code03 = product[i].prod_code.toString();
            prod_name03 = product[i].prod_name.toString();
            prod_fee03 = NumberFormat('###,###,###,###').format(int.parse(product[i].prod_fee.toString()));
            main_img03 = product[i].main_img.toString();
            prod_desc03 = product[i].prod_desc.toString();
            main_plc03 = product[i].main_plc.toString();
            break;
          case 3:
            prod_code04 = product[i].prod_code.toString();
            prod_name04 = product[i].prod_name.toString();
            prod_fee04 = NumberFormat('###,###,###,###').format(int.parse(product[i].prod_fee.toString()));
            main_img04 = product[i].main_img.toString();
            prod_desc04 = product[i].prod_desc.toString();
            main_plc04 = product[i].main_plc.toString();
            break;
        }
      }
   }

   clear() {
    selectCode = '';
    selectProduct = '';
    selectFee = '';
    selectPlc = '';
    pastClick = '';
    product = [];
    member = false;
    service = false;
    security = false;
    sevImg  = 'assets/product-select-checkNo.png';
    memImg = 'assets/product-select-checkNo.png';
    secImg = 'assets/product-select-checkNo.png';
    main_img01 = '14';
    main_img02 = '15';
    main_img03 = '16';
    main_img04 = '17';
    isAvailable = false;
    payImg = 'assets/button-pay-disabled.png';
    showAgreeComponent = false;
   }
   backClear() {
    selectCode = '';
    selectProduct = '';
    selectFee = '';
    selectPlc = '';
    pastClick = '';
    member = false;
    service = false;
    security = false;
    sevImg  = 'assets/product-select-checkNo.png';
    memImg = 'assets/product-select-checkNo.png';
    secImg = 'assets/product-select-checkNo.png';
    main_img01 = '14';
    main_img02 = '15';
    main_img03 = '16';
    main_img04 = '17';
    isAvailable = false;
    payImg = 'assets/button-pay-disabled.png';
    showAgreeComponent = false;
   }
}