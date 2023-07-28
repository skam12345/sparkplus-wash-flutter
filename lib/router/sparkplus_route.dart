import 'package:sparkplus_project_modify_flutter/views/coupon/sparkplus_coupon_main_page.dart';
import 'package:sparkplus_project_modify_flutter/views/coupon/sparkplus_coupon_wash_page.dart';
import 'package:sparkplus_project_modify_flutter/views/membership/sparkplus_membership_credit_page.dart';
import 'package:sparkplus_project_modify_flutter/views/membership/sparkplus_membership_main_page.dart';
import 'package:sparkplus_project_modify_flutter/views/membership/sparkplus_membership_payment_method_page.dart';
import 'package:sparkplus_project_modify_flutter/views/membership/sparkplus_membership_phone_input_page.dart';
import 'package:sparkplus_project_modify_flutter/views/oneTime/sparkplus_onetime_easypay_page.dart';
import 'package:sparkplus_project_modify_flutter/views/oneTime/sparkplus_onetime_main_page.dart';
import 'package:sparkplus_project_modify_flutter/views/oneTime/sparkplus_onetime_option_page.dart';
import 'package:sparkplus_project_modify_flutter/views/oneTime/sparkplus_onetime_payment_method_page.dart';
import 'package:sparkplus_project_modify_flutter/views/sparkplus_index_page.dart';
import 'package:sparkplus_project_modify_flutter/views/sparkplus_main_page.dart';
import 'package:sparkplus_project_modify_flutter/views/oneTime/sparkplus_ontime_credit_page.dart';

class SparkPlusRoute {
  static final routes = {
    // 통합
    '/sparkplus/': (context) => SparkPlusIndexPage(),                                            // sparkPlus 인트로 화면
    '/sparkplus/recognize': (context) => SparkPlusMainPage(),                                    // sparkPlus 인트로 -> 차량인식 후 메인 페이지

    // 1회권                                                                    
    '/sparkplus/one_time/main': (context) => SparkPlusOneTimeMainPage(),                         // sparkPlus 메인 -> 1회권 상품 선택
    '/sparkplus/one_time/option': (context) => SparkPlusOneTimeOptionPage(),                     // 1회권 상품 선탥 -> 1회권 옵션 선택
    '/sparkplus/one_time/payment': (context) => SparkPlusOneTimePayMentMethodPage(),             // 1회권 옵션 선택 -> 1회권 결제 수단 선택
    '/sparkplus/one_time/credit': (context) => SparkPlusOneTimeCreditPage(),                     // 1회권 결제 수단 -> 1회권 카드 결제 화면
    '/sparkplus/one_time/easypay': (context) => SparkPlusOneTimeEasyPayPage(),                   // 1회권 결제 수단 -> 1회권 간편 결제 화면
                                                                                                 // 1회권 간편 결제 화면 -> sparkPlus 인트로 화면
    
    // 멤버쉽
    '/sparkplus/membership/main': (context) => SparkPlusMembershipMainPage(),                    // sparkPlus 메인 -> 멤버쉽 상품 선택
    '/sparkplus/membership/phone': (context) => SparkPlusMembershipPhoneInputPage(),             // 멤버쉽 상품 선택 -> 멤버쉽 폰 입력 화면
    '/sparkplus/membership/payment': (context) => SparkPlusMembershipPaymentMethodPage(),        // 멤버쉽 폰 입력 화면 -> 멤버쉽 결제 수단 선택
    '/sparkplus/membership/credit': (context) => SparkPlusMembershipCreditPage(),                // 멤버쉽 결제 수단 선택 -> 멤버쉽 카드 결제 화면 
                                                                                                 // 멤버쉽 카드 결제 화면 -> sparkPlus 인트로 화면
    // 쿠폰
    '/sparkplus/coupon/main': (context) => SparkPlusCouponMainPage(),                            // 메인 페이지 -> 쿠폰 인식 메인 페이지
    '/sparkplus/coupon/wash': (context) => SparkPlusCouponWashPage(),                            // 쿠폰 인식 메인 페이지 -> 쿠폰 차량 세차 페이지
                                                                                                 // 쿠폰 차량 세차 페이지 -> sparkPlus 인트로 화면
  };
}