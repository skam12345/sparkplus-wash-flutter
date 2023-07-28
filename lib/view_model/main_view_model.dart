import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sparkplus_project_modify_flutter/repositories/main_repository.dart';
import 'package:sparkplus_project_modify_flutter/repositories/set_wash_use_repository.dart';
import 'package:sparkplus_project_modify_flutter/repositories/update_merge_ctl_repository.dart';
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';

class MainViewModel with ChangeNotifier {
  // Set Instance Location
  // String data List
  String _regionNo = '서울';
  String _secondNo = '111';
  String _thirdNo = '가';
  String _finalNo = '1111';
  String _carNo = '서울111가1111';
  String _member = '비회원';
  String _tapDest = 'kind';
  String _consonant = '';
  String _region = '';
  String _kind = '';
  String _caruse = '';
  String _recognize = '';
// -----------------------------------------
  // bool data List
  bool _showModifyCarNo = false;
  bool _wait = false;
  bool _enter = false;
  bool _indicator = false;
// ----------------------------------------- 
  // Get Instance Location
  // get String data List 
  String get carNo => _carNo;
  String get member => _member;
  String get regionNo => _regionNo;
  String get secondNo => _secondNo;
  String get thirdNo => _thirdNo;
  String get finalNo => _finalNo;
  String get tapDest => _tapDest;
  String get consonant => _consonant;
  String get region => _region;
  String get kind => _kind;
  String get caruse => _caruse;
  String get recognize => _recognize;
// -----------------------------------------
  // get bool data List
  bool get showModifyCarNo => _showModifyCarNo;
  bool get wait => _wait;
  bool get enter => _enter;
  bool get indicator => _indicator;
// -----------------------------------------
  // General Instance List
  var numPad = [['1', '2', '3'], ['4', '5', '6'], ['7', '8', '9'], ['저장', '0', '지움']];
  var regionList = [['없음', '서울', '경기'], ['인천', '부산', '대구'], ['광주', '대전', '울산'], ['강원', '충남', '충북'], ['전남', '전북', '경남'], ['경북', '제주', '임시']];
  var consonantList = [['ㄱ', 'ㄴ', 'ㄷ'], ['ㄹ', 'ㅁ', 'ㅂ'], ['ㅅ', 'ㅇ', 'ㅈ'], ['ㅊ', 'ㅋ', 'ㅌ'], ['ㅍ', 'ㅎ']];
  var consonantArray = ['ㄱ', 'ㄴ', 'ㄷ', 'ㄹ', 'ㅁ', 'ㅂ', 'ㅅ', 'ㅇ', 'ㅈ', 'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ'];
  var consonantA = [['가', '거', '고'], ['구', '그']];
  var consonantB = [['나', '너', '노'], ['누', '느']];
  var consonantC = [['다', '더', '도'], ['두', '드']];
  var consonantD = [['라', '러', '로'], ['루', '르']];
  var consonantE = [['마', '머', '모'], ['무', '므']];
  var consonantF = [['바', '버', '보'], ['부', '브']];
  var consonantG = [['사', '서', '소'], ['수', '스']];
  var consonantH = [['아', '어', '오'], ['우', '으']];
  var consonantI = [['자', '저', '조'], ['주', '즈']];
  var consonantJ = [['차', '처', '초'], ['추', '츠']];
  var consonantK = [['카', '커', '코'], ['쿠', '크']];
  var consonantL = [['타', '터', '토'], ['투', '트']];
  var consonantM = [['파', '퍼', '포'], ['푸', '프']];
  var consonantN = [['하', '허', '호'], ['후', '흐', '해'], ['합']];
  late var consonantParty = [];
   // ------------------------------------------
  // Constructor
  MainViewModel() {
    consonantParty.add(consonantA);
    consonantParty.add(consonantB);
    consonantParty.add(consonantC);
    consonantParty.add(consonantD);
    consonantParty.add(consonantE);
    consonantParty.add(consonantF);
    consonantParty.add(consonantG);
    consonantParty.add(consonantH);
    consonantParty.add(consonantI);
    consonantParty.add(consonantJ);
    consonantParty.add(consonantK);
    consonantParty.add(consonantL);
    consonantParty.add(consonantM);
    consonantParty.add(consonantN);
  }
  // Setting Instance Definition Location
  set carNo(String carNo) {
    _carNo = carNo;
    notifyListeners();
  }

  set member(String member) {
    _member = member;
    notifyListeners();
  }

  set regionNo(String regionNo) {
    _regionNo = regionNo;
    notifyListeners();
  }
  
  set secondNo(String secondNo) {
    _secondNo = secondNo;
    notifyListeners();
  }

  set thirdNo(String thirdNo) {
    _thirdNo = thirdNo;
    notifyListeners();
  }

  set finalNo(String finalNo) {
    _finalNo = finalNo;
    notifyListeners();
  }

  set showModifyCarNo(bool showModifyCarNo) {
    _showModifyCarNo = showModifyCarNo;
    notifyListeners();
  }

  set tapDest(String tapDest) {
    _tapDest = tapDest;
    notifyListeners();
  }

  set consonant(String consonant) {
    _consonant = consonant;
    notifyListeners();
  }

  set region(String region) {
    _region = region;
    notifyListeners();
  }

  set kind(String kind) {
    _kind = kind;
    notifyListeners();
  }

  set caruse(String caruse) {
    _caruse = caruse;
  }

  set recognize(String recognize) {
    _recognize = recognize;
    notifyListeners();
  }

  set wait(bool wait) {
    _wait = wait;
    notifyListeners();
  }

  set enter(bool enter) {
    _enter = enter;
    notifyListeners();
  }

  set indicator(bool indicator) {
    _indicator = indicator;
    notifyListeners();
  }
  // Real Proccess Function Location

  setTapDest(String point) {
    tapDest = point;
  }

  showModifyContent() {
    if(!showModifyCarNo) {
      showModifyCarNo = true;
    }else {
      showModifyCarNo = false;
    }
  }

  close() {
    if(tapDest == 'region') {
      tapDest = 'kind';
      region = '없음';
    }
    if(tapDest == 'caruse') {
      tapDest = 'recognize';
      consonant = '';
    }
  }
  
  showConsonantPad(String data) {
    consonant = data;
  }

  clickToPad(String data, BuildContext context) async {
    Map<String, dynamic> result = {};
    Map args = {};
    switch(tapDest) {
      case 'region':
        region = data;
        tapDest = 'kind';
      case 'kind':
        if(data != '저장' && data != '지움') {
          if(kind.length < 3) {
            kind += data;
          }
        }else {
          if(data == '지움') {
            if(kind.length != 0) {
              kind = kind.substring(0, kind.length - 1);
            }
          }else {
            if(region == '없음') {
              region = '';
              regionNo = '없음';
              carNo = '$region $kind $caruse $recognize';
              secondNo = kind;
              thirdNo = caruse;
              finalNo = recognize;
              showModifyCarNo = false;
            }else {
              carNo = '$region $kind $caruse $recognize';
              regionNo = region;
              secondNo = kind;
              thirdNo = caruse;
              finalNo = recognize;
              showModifyCarNo = false;
            }
          }
        }
      case 'caruse':
        caruse = data;
        tapDest = 'recognize';
        consonant = '';
      default:
        if(data != '저장' && data != '지움') {
          if(recognize.length < 4) {
            recognize += data;
          }
        }else {
          if(data == '지움') {
            if(recognize.length != 0) {
              recognize = recognize.substring(0, recognize.length - 1);
            }
              
          }else {
            if(region == '없음') {
              region = '';
              regionNo = '없음';
              carNo = '$region$kind$caruse$recognize';
              secondNo = kind;
              thirdNo = caruse;
              finalNo = recognize;
              showModifyCarNo = false;
            }else {
              carNo = '$region$kind$caruse$recognize';
              regionNo = region;
              secondNo = kind;
              thirdNo = caruse;
              finalNo = recognize;
              showModifyCarNo = false;
              args['auth_key'] = AUTH_KEY;
              args['car_no'] = carNo;
              var response = await MainRepository.chkService(args);
              result = response as Map<String, dynamic>;
              if(result['is_membership'] == 'Y') {
                member = '멤버쉽';
                getMembership(context);
              }else {
                if(result['is_member'] == 'Y') {
                  member = '개인회원';
                }else {
                  member = '비회원';
                }
              }
            }
          }
        }
    }
  }

  getMembership(BuildContext context) async {
    Map<String, dynamic> membership = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = carNo;
    var response = await MainRepository.getMembership(args);
    membership = response as Map<String, dynamic>;
    wait = true;
    setWashUse(membership, context);
  }

  setWashUse(Map<String, dynamic> membership, BuildContext context) async {
    Map<String, dynamic> result = {};
    Map args = {};
    String plc = '';
    switch(membership['prod_name']) {
      case 'PREMIUM spa 무제한':
        plc = '4';
        break;
      case 'BEST spa 무제한':
        plc = '3';
        break;
      case 'BUBBLE spa 무제한':
        plc = '2';
        break;
      default:
        plc = '1';
        break;
    }
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = carNo;
    args['is_member'] = 'N';
    args['use_type'] = 'WUT002';
    args['prod_code'] = membership['prod_code'];
    args['prod_name'] = membership['prod_name'];
    args['option_code'] = '';
    args['option_name'] = '';
    args['is_brush'] = 'N';
    args['wash_fee'] = 0;
    args['dc_fee'] = 0;
    args['option_fee'] = 0;
    args['pay_fee'] = 0;
    args['plc_code'] = plc;
    var response = await SetWashUseRepository.setWashUse(args);
    result = response as Map<String, dynamic>;
    if(result['result_code'] == 'Y') {
      setWashCtl(context);
    }
  }

  setWashCtl(BuildContext context) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = carNo;
    args['lane_no'] = '01';
    var response = await SetWashUseRepository.setWashCtl(args);
    result = response as Map<String, dynamic>;
    if(result['result_code'] == 'Y') {
      Timer.periodic(Duration(seconds: 2), (timer) { 
        chkGoWash(context, timer);
      });
    }
  }

  chkGoWash(BuildContext context, Timer timer) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = carNo;
    var response = await SetWashUseRepository.chkgoWash(args);
    result = response as Map<String, dynamic>;
    if(result['is_go'] == 'Y') {
      wait = false;
      enter = true;
      updateMergeControl(context);
      timer.cancel();
    }
  }

  updateMergeControl(BuildContext context) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = carNo;
    var response = await UpdateMergeCtlRepository.updateMergeControl(args);
    result = response as Map<String, dynamic>;
    if(result['result_code'] == 'Y') {
      Timer(Duration(seconds: 1), () async  {
        enter = false;
        reset();
        Navigator.of(context).pushNamed('/sparkplus/');
      });
    }
  }

  Future<void> reset() async {
    Future.delayed(Duration(seconds: 1), () {
      regionNo = '서울';
      secondNo = '111';
      thirdNo = '가';
      finalNo = '1111';
      carNo = '서울111가1111';
      member = '비회원';
      tapDest = 'kind';
      region = '';
      kind = '';
      caruse = '';
      recognize = '';
      consonant = '';
    });
  }

}