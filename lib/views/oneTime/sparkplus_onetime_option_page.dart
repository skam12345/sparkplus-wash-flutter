import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/args/one_main_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/args/option_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/product/oneTime_design_component.dart';
import 'package:sparkplus_project_modify_flutter/components/top/top_content_component.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_main_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_option_view_model.dart';

class SparkPlusOneTimeOptionPage extends StatefulWidget {
  const SparkPlusOneTimeOptionPage({super.key});

  @override
  State<SparkPlusOneTimeOptionPage> createState() => _SparkPlusOneTimeOptionPageState();
}

class _SparkPlusOneTimeOptionPageState extends State<SparkPlusOneTimeOptionPage> {
  late int i = 0;
  @override
  Widget build(BuildContext context) {
    OneTimeOptionViewModel option = context.watch<OneTimeOptionViewModel>();
    OneTimeMainViewModel main = context.watch<OneTimeMainViewModel>();
    SizeMedia size = SizeMedia();
    final args = ModalRoute.of(context)!.settings.arguments as OneMainOpt;
    if(i == 0) {
      option.getOptionProduct(args.prodCode);
      option.setProductTotal(int.parse(args.prodFee.replaceAll(',', '')));
      option.setProductName(args.prodName);
      option.setPlc(args.plc);
      i++;
    }
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: size.getWidth(context),
            height: size.getHeight(context),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_basic-background.png'),
                filterQuality: FilterQuality.high,
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: option.opt.length == 0 && args.prodCode != '1'? 
                  Center(
                    child: CircularProgressIndicator(
                      color: Colors.red,
                      strokeWidth: 2.0,
                    ),
                  )
                  :Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 35),
                      SizedBox(
                        width: 295,
                        height: 68,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/product-seelct-titleIcon-oneWashPayment.png', 
                              width: 67, 
                              height: 58,
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              '1회권 추가옵션',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'SpoqaHanSansNeo-Light', 
                                color: Color(0xff153665),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      option.option01 ? InkWell(
                        onTap: () {
                          if(!option.check) {
                            option.selectOption(option.option_code01, option.option_name01, option.option_fee01, option.option_img01, option.option_plc01);
                          }
                        },
                        child: Container(
                          width: 540,
                          height: 85,
                          padding: EdgeInsets.only(left: 85, right: 40),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/product/${option.option_img01}.png'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${option.option_name01}',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '${NumberFormat('###,###,###,###').format(int.parse(option.option_fee01))}',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Color(0xff2a6bee),
                                ),
                              )
                            ],
                          ),
                        ),
                      ): SizedBox(height: 85),
                      SizedBox(height: 5),
                      option.option02 ?  InkWell(
                        onTap: () {
                          if(!option.check) {
                            option.selectOption(option.option_code02, option.option_name02, option.option_fee02, option.option_img02, option.option_plc02);
                          }
                        },
                        child: Container(
                          width: 540,
                          height: 85,
                          padding: EdgeInsets.only(left: 85, right: 40),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/product/${option.option_img02}.png'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${option.option_name02}',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '${NumberFormat('###,###,###,###').format(int.parse(option.option_fee02))}',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Color(0xff2a6bee),
                                ),
                              )
                            ],
                          ),
                        ),
                      ): SizedBox(height: 85),
                      SizedBox(height: 5),
                      option.option03 ? InkWell(
                        onTap: () {
                          if(!option.check) {
                            option.selectOption(option.option_code03, option.option_name03, option.option_fee03, option.option_img03, option.option_plc03);
                          }
                        },
                        child: Container(
                          width: 540,
                          height: 85,
                          padding: EdgeInsets.only(left: 85, right: 40),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/product/${option.option_img03}.png'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${option.option_name03}',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '${NumberFormat('###,###,###,###').format(int.parse(option.option_fee03))}',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Color(0xff2a6bee),
                                ),
                              )
                            ],
                          ),
                        ),
                      ): SizedBox(height: 85),
                      SizedBox(height: 5),
                      option.option04 ?  InkWell(
                        onTap: () {
                          if(!option.check) {
                            option.selectOption(option.option_code04, option.option_name04, option.option_fee04, option.option_img04, option.option_plc04);
                          }
                        },
                        child: Container(
                          width: 540,
                          height: 85,
                          padding: EdgeInsets.only(left: 85, right: 40),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/product/${option.option_img04}.png'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${option.option_name04}',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '${NumberFormat('###,###,###,###').format(int.parse(option.option_fee04))}',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Color(0xff2a6bee),
                                ),
                              )
                            ],
                          ),
                        ),
                      ): SizedBox(height: 85),
                      SizedBox(height: 5),
                      option.option05 ? InkWell(
                        onTap: () {
                          if(!option.check) {
                            option.selectOption(option.option_code05, option.option_name05, option.option_fee05, option.option_img05, option.option_plc05);
                          }
                        },
                        child: Container(
                          width: 540,
                          height: 85,
                          padding: EdgeInsets.only(left: 85, right: 40),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/product/${option.option_img05}.png'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            )
                          ),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${option.option_name05}',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '${NumberFormat('###,###,###,###').format(int.parse(option.option_fee05))}',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Color(0xff2a6bee),
                                ),
                              )
                            ],
                          ),
                        ),
                      ): SizedBox(height: 85),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 8),
                          InkWell(
                            onTap: () {
                              option.optionSelectCheck();
                            },
                            child: Container(
                              width: 60,
                              height: 48,
                              padding: EdgeInsets.only(left: 85, right: 40),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(option.checkImg),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '옵션 선택 안함',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'SpoqaHanSansNeo-Light',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 110,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 79,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            main.clear();
                                            option.clear();
                                            Navigator.popAndPushNamed(context, '/sparkplus/recognize');
                                          },
                                          child: Container(
                                            width: 143,
                                            height: 79,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/button-first-screen.png'),
                                                filterQuality: FilterQuality.high,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            option.clear();
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            width: 152,
                                            height: 79,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/button-back-screen.png'),
                                                filterQuality: FilterQuality.high,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: InkWell(
                                        onTap: () {
                                          option.indicator = true;
                                          Timer(Duration(seconds: 1), () {
                                            option.indicator = false;
                                            Navigator.pushNamed(context, '/sparkplus/one_time/payment', arguments: OptionOpt(prodCode: args.prodCode, prodName: args.prodName, prodFee: args.prodFee.replaceAll(',', ''), carNo: args.carNo, optionCode: option.select_code, optionName: option.select_name.replaceAll(' + ', '::').replaceFirst('::', ''), washFee: option.default_price, optionFee: option.option_price, payFee: option.total_price, plc: option.select_plc));
                                          });
                                        },
                                        child: Container(
                                          width: 232,
                                          height: 79,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/button-pay.png'),
                                              filterQuality: FilterQuality.high,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: OneTimeDesignComponent(),
                ),
              ],
            ),
          ),
          TopContentComponent(firstText: '세차 서비스 선택', secondText: '선택 내용'),
          Visibility(
            visible: option.indicator,
            child: SizedBox(
              width: size.getWidth(context),
              height: size.getHeight(context),
              child: Center(
                child: Container(
                  width: 180,
                  height: 180,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    color: Colors.red,
                    strokeWidth: 5.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}