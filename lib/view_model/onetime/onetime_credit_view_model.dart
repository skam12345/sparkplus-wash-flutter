import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sparkplus_project_modify_flutter/components/args/option_opt.dart';
import 'package:sparkplus_project_modify_flutter/repositories/set_wash_pay_repository.dart';
import 'package:sparkplus_project_modify_flutter/repositories/set_wash_use_repository.dart';
import 'package:sparkplus_project_modify_flutter/repositories/update_merge_ctl_repository.dart';
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_main_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_option_view_model.dart';

class OneTimeCreditViewModel with ChangeNotifier {
  // Set Instance Location
  bool _wait = false;
  bool _enter = false;
  bool _indicator = false;
  bool _call = false;
  // Get Instance Location
  bool get wait => _wait;
  bool get enter => _enter;
  bool get indicator => _indicator;
  bool get call => _call;
  // Constructor
  OneTimeCreditViewModel() {

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

  set indicator(bool indicator) {
    _indicator = indicator;
    notifyListeners();
  }

  set call(bool call) {
    _call = call;
    notifyListeners();
  }
  // Real Proccess Function Location
  callProccessAPI(OptionOpt opt, BuildContext context, OneTimeMainViewModel main, OneTimeOptionViewModel option) async {
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
        args['use_type'] = 'WUT001';
        args['prod_code'] = opt.prodCode;
        args['prod_name'] = opt.prodName;
        String op = '';
        for(int i = 0; i < opt.optionCode.length; i++) {
          op += opt.optionCode[i];
          if(i < (opt.optionCode.length - 1)){
            op += '::';
          }
        }
        args['option_code'] = op;
        args['option_name'] = opt.optionName;
        args['is_brush'] = 'N';
        args['wash_fee'] = opt.washFee;
        args['dc_fee'] = 0;
        args['option_fee'] = opt.optionFee;
        args['pay_fee'] = opt.payFee;
        String plc = '';
        for(int i = 0; i < opt.plc.length; i++) {
          plc += opt.plc[i];
          if(i < (opt.plc.length - 1)) plc += '::';
        }
        args['plc_code'] = plc;
        args['pay_type'] = 'WPT001';
        args['terminal_type'] = 'WTT001';
        var response = await SetWashPayRepository.setWashPay(args);
        result = response as Map<String, dynamic>;
        if(result['result_code'].toString() == 'Y') {
          setApprovalPay(opt, context, main, option);
        }
      });
    }
  }

  setApprovalPay(OptionOpt opt, BuildContext context, OneTimeMainViewModel main, OneTimeOptionViewModel option) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = opt.carNo;
    args['pay_fee'] = opt.payFee;
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
      wait = true;
      setWashUse(opt, context, main, option);
    }
  }

  setWashUse(OptionOpt opt, BuildContext context, OneTimeMainViewModel main, OneTimeOptionViewModel option) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = opt.carNo;
    args['is_member'] = 'N';
    args['use_type'] = 'WUT001';
    args['prod_code'] = opt.prodCode;
    args['prod_name'] = opt.prodName;
    String op = '';
    for(int i = 0; i < opt.optionCode.length; i++) {
      op += opt.optionCode[i];
      if(i < (opt.optionCode.length - 1)){
        op += '::';
      }
    }
    args['option_code'] = op;
    args['option_name'] = opt.optionName;
    args['is_brush'] = 'N';
    args['wash_fee'] = opt.washFee;
    args['dc_fee'] = 0;
    args['option_fee'] = opt.optionFee;
    args['pay_fee'] = opt.payFee;
    String plc = '';
    for(int i = 0; i < opt.plc.length; i++) {
      plc += opt.plc[i];
      if(i < (opt.plc.length - 1)) plc += '::';
    }
    args['plc_code'] = plc;
    var response = await SetWashUseRepository.setWashUse(args);
    result = response as Map<String, dynamic>;
    if(result['result_code'] == 'Y') {
      setWashControl(opt, context, main, option);
    }
  }

  setWashControl(OptionOpt opt, BuildContext context, OneTimeMainViewModel main, OneTimeOptionViewModel option) async {
   Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = opt.carNo;
    args['lane_no'] = '01';
    var response = await SetWashUseRepository.setWashCtl(args);
    result = response as Map<String, dynamic>;
    if(result['result_code'] == 'Y') {
      Timer.periodic(Duration(seconds: 2), (timer) async {
        chkGoWash(opt, context, main, option, timer);
      });
    }
  }

  chkGoWash(OptionOpt opt, BuildContext context, OneTimeMainViewModel main, OneTimeOptionViewModel option, Timer timer) async {
    Map<String, dynamic> result = {};
    Map args = {};
    args['auth_key'] = AUTH_KEY;
    args['car_no'] = opt.carNo;
    var response = await SetWashUseRepository.chkgoWash(args);
    result = response as Map<String, dynamic>;
    if(result['is_go'] == 'Y') {
      Timer(Duration(seconds: 1), () {
        wait = false;
        enter = true;
        updateMergeControl(opt, context, main, option);
        timer.cancel();
      });
    }
  }

  updateMergeControl(OptionOpt opt, BuildContext context, OneTimeMainViewModel main, OneTimeOptionViewModel option) async {
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
        option.clear();
        Navigator.pushNamed(context, '/sparkplus/');
      });
    }
  }

}