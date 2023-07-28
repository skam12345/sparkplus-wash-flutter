import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sparkplus_project_modify_flutter/components/args/membership_opt.dart';
import 'package:sparkplus_project_modify_flutter/repositories/set_wash_pay_repository.dart';
import 'package:sparkplus_project_modify_flutter/repositories/set_wash_use_repository.dart';
import 'package:sparkplus_project_modify_flutter/repositories/update_merge_ctl_repository.dart';
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';
import 'package:sparkplus_project_modify_flutter/view_model/membership/membership_main_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/membership/membership_phone_input_view_model.dart';

class MembershipCreditViewModel with ChangeNotifier {
  // Set Instance Location
  bool _wait = false;
  bool _enter = false;
  bool _call = false;
  bool _indicator = false;
  // Get Instance Location
  bool get wait => _wait;
  bool get enter => _enter;
  bool get call => _call;
  bool get indicator => _indicator;
  // Constructor
  MembershipCreditViewModel() {

  }
  // Setting Instance Definition Location
  set wait(bool wait) {
    _wait = wait;
    notifyListeners();
  }

  set enter(bool enter) {
    _enter = enter;
    notifyListeners();
  }

  set call(bool call) {
    _call = call;
    notifyListeners();
  }

  set indicator(bool indicator) {
    _indicator = indicator;
    notifyListeners();
  }
  // Real Proccess Function Location

  callProccessAPI(MembershipOpt opt, BuildContext context, MembershipMainViewModel main, MembershipPhoneInputViewModel phone) async {
    if(!call) {
      call = true;
      indicator = true;
      Timer(Duration(seconds: 1), () async {
        indicator = false;
        Map<String, dynamic> result = {};
        Map args = {};
        args['auth_key'] = AUTH_KEY;
        args['car_no'] = opt.carNo;
        args['is_member'] = 'N';
        args['use_type'] = 'WUT002';
        args['prod_code'] = opt.prodCode;
        args['prod_name'] = opt.prodName;
        args['option_code'] = '';
        args['option_name'] = '';
        args['is_brush'] = 'N';
        args['wash_fee'] = opt.prodFee;
        args['dc_fee'] = 0;
        args['option_fee'] = 0;
        args['pay_fee'] = opt.prodFee;
        args['plc_code'] = opt.prodPlc;
        args['pay_type'] = 'WPT001';
        args['terminal_type'] = 'WTT001';
        var response = await SetWashPayRepository.setWashPay(args);
        result = response as Map<String, dynamic>;
        if(result['result_code'].toString() == 'Y') {
          setApprovalPay(opt, context, main, phone);
        }
      });
    }
  }

  setApprovalPay(MembershipOpt opt, BuildContext context, MembershipMainViewModel main, MembershipPhoneInputViewModel phone) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = opt.carNo;
    args['pay_fee'] = opt.prodFee;
    args['trd_date'] = '20230720';
    DateTime time = DateTime.now();
    String format = DateFormat('yyyyMMdd HH:mm:ss').format(time);
    format = format.substring(9, 17).replaceAll(':', '');
    args['trd_time'] = format;
    args['auth_no'] = '26075011';
    args['tr_no'] = '292354684245';
    args['tocken'] = '';
    var response = await SetWashPayRepository.setApprovalPay(args);
    result =  response as Map<String, dynamic>;
    if(result['result_code'].toString() == 'Y') {
      setMembershipPay(opt, context, main, phone); 
    }
  }

  setMembershipPay(MembershipOpt opt, BuildContext context, MembershipMainViewModel main, MembershipPhoneInputViewModel phone) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = opt.carNo;
    args['is_member'] = 'N';
    args['prod_code'] = opt.prodCode;
    args['is_brush'] = 'N';
    DateTime time = DateTime.now();
    String start_date = DateFormat('yyyy-MM-dd').format(time);
    String pay_day = DateFormat('dd').format(time);
    String end_date = DateFormat('yyyy-MM-dd').format(calEndDate(new DateTime(time.year, time.month, time.day)));
    args['pay_day'] = pay_day;
    args['reg_type'] = 'MRT002';
    args['pay_fee'] = opt.prodFee;
    args['start_date'] = start_date;
    args['end_date'] = end_date;
    args['token'] = 'TOCKIC2013072498574940383EA43';
    args['phone_no'] = opt.phone;
    var response = await SetWashPayRepository.setMembershipPay(args);
    result = response as Map<String, dynamic>;
    if(result['result_code'] == 'Y') {
      wait = true;
      setWashUse(opt, context, main, phone);
    }
  }

  setWashUse(MembershipOpt opt, BuildContext context, MembershipMainViewModel main, MembershipPhoneInputViewModel phone) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = opt.carNo;
    args['is_member'] = 'N';
    args['use_type'] = 'WUT002';
    args['prod_code'] = opt.prodCode;
    args['prod_name'] = opt.prodName;
    args['option_code'] = '';
    args['option_name'] = '';
    args['is_brush'] = 'N';
    args['wash_fee'] = opt.prodFee;
    args['dc_fee'] = 0;
    args['option_fee'] = 0;
    args['pay_fee'] = opt.prodFee;
    args['plc_code'] = opt.prodPlc;
    var response = await SetWashUseRepository.setWashUse(args);
    result = response as Map<String, dynamic>;
    if(result['result_code'] == 'Y') {
      setWashCtl(opt, context, main, phone);
    }
  }

  setWashCtl(MembershipOpt opt, BuildContext context, MembershipMainViewModel main, MembershipPhoneInputViewModel phone) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = opt.carNo;
    args['lane_no'] = '01';
    var response = await SetWashUseRepository.setWashCtl(args);
    result = response as Map<String, dynamic>;
    if(result['result_code'] == 'Y') {
      Timer.periodic(Duration(seconds: 2), (timer) {
          chkGoWash(opt, context, main, phone, timer);
       });
    }
  }

  chkGoWash(MembershipOpt opt, BuildContext context, MembershipMainViewModel main, MembershipPhoneInputViewModel phone, Timer timer) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = opt.carNo;
    var response = await SetWashUseRepository.chkgoWash(args);
    result = response as Map<String, dynamic>;
    if(result['is_go'] == 'Y') {
      wait = false;
      enter = true;
      setMemUse(opt, context, main, phone);
      timer.cancel();
    }
  }

  setMemUse(MembershipOpt opt, BuildContext context, MembershipMainViewModel main, MembershipPhoneInputViewModel phone) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = opt.carNo;
    var response = await UpdateMergeCtlRepository.setMemUse(args);
    result = response as Map<String, dynamic>;
    if(result['result_code'] == 'Y') {
      updateMergeControl(opt, context, main, phone);
    }
  }

  updateMergeControl(MembershipOpt opt, BuildContext context, MembershipMainViewModel main, MembershipPhoneInputViewModel phone) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = opt.carNo;
    var response = await UpdateMergeCtlRepository.updateMergeControl(args);
    result = response as Map<String, dynamic>;
    if(result['result_code'] == 'Y') {
      Timer(Duration(seconds: 2), () {
        enter = false;
        call = false;
        main.clear();
        phone.clear();
        Navigator.pushNamed(context, '/sparkplus/');
      });
    }
  }

  calEndDate(DateTime date) {
  late DateTime? result = null;
  List<int> mon = [1, 3, 5, 8, 10];
  bool flag = false;
  bool not = false;
  for(int i = 0; i < mon.length; i++) {
    if(mon[i] == date.month) {
      if((date.year % 4 == 0 && date.year % 100 != 0) || date.year % 400 == 0) {
        if(date.day >= 30 && date.day <= 31) {
          result = DateTime(date.year, date.month + 2, 0);
          flag = true;
          break;
        }else {
          result = DateTime(date.year, date.month + 1, date.day);
          not = true;
          break;
        }
      }else {
        if(date.day >= 28 && date.day <= 31) {
          result = DateTime(date.year, date.month + 2, 0);
          flag = true;
          break;
        }else {
          result = DateTime(date.year, date.month + 1, date.day);
          not = true;
          break;
        }
      }
    }else {
        flag = false;
    }
    if(!flag && !not) {
      result =  DateTime(date.year, date.month + 1, date.day);
    }
  }
  return result;
}
  
}