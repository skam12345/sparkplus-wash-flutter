import 'package:flutter/material.dart';
import 'package:sparkplus_project_modify_flutter/components/args/coupon_main_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/product/Coupon_design_component.dart';
import 'package:sparkplus_project_modify_flutter/components/top/top_content_component.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';

class SparkPlusCouponMainPage extends StatefulWidget {
  const SparkPlusCouponMainPage({super.key});

  @override
  State<SparkPlusCouponMainPage> createState() => _SparkPlusCouponMainPageState();
}

class _SparkPlusCouponMainPageState extends State<SparkPlusCouponMainPage> {
  @override
  Widget build(BuildContext context) {
    SizeMedia size = SizeMedia();
    final args = ModalRoute.of(context)!.settings.arguments as CouponMainOpt;
    return Scaffold(
      body: SizedBox(
        width: size.getWidth(context),
        height: size.getHeight(context),
        child: Stack(
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
                    child: Container(
                      padding: EdgeInsets.only(top: 140),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 512,
                            height: 477,
                            padding: EdgeInsets.symmetric(horizontal: 60),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/background-left-Credit-Card-box.png'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 45),
                                Text(
                                  '보유하고 계신 QR코드를\n 스캐너에 갖다대어 주세요',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'SpoqaHanSansNeo-Light',
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 90),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/sparkplus/coupon/wash');
                                  },
                                  child: Container(
                                    width: 315,
                                    height: 211,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/payment-picture-QRscan.png'),
                                        filterQuality: FilterQuality.high,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100,
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
                                                Navigator.pushNamed(context,  '/sparkplus/recognize');
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
                                          child: Container(
                                            width: 232,
                                            height: 79,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/button-pay-disabled.png'),
                                                filterQuality: FilterQuality.high,
                                                fit: BoxFit.fill,
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
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 442,
                          height: 417,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/background-right-CarNumber-Box.png'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 45),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 25),
                                  Container(
                                    width: 90,
                                    height: 94,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(width: 1, color: Color(0xff215410)),
                                      color: Color(0xff18075C),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${args.first}',
                                      style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'SpoqaHanSansNeo-Light',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Container(
                                    width: 99,
                                    height: 94,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(width: 1, color: Color(0xff215410)),
                                      color: Color(0xff18075C),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${args.second}',
                                      style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'SpoqaHanSansNeo-Light',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Container(
                                    width: 90,
                                    height: 94,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(width: 1, color: Color(0xff215410)),
                                      color: Color(0xff18075C),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${args.third}',
                                      style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'SpoqaHanSansNeo-Light',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Container(
                                    width: 108,
                                    height: 94,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(width: 1, color: Color(0xff215410)),
                                      color: Color(0xff18075C),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${args.fourth}',
                                      style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'SpoqaHanSansNeo-Light',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                ],
                              ),
                              SizedBox(height: 94),
                              SizedBox(
                                height: 45,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 7,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '${args.carNo}',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'SpoqaHanSansNeo-Medium',
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        '차량은',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'SpoqaHanSansNeo-Light',
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8),
                              Opacity(
                                opacity: 0.2,
                                child: Container(
                                  width: 380,
                                  height: 0.5,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              SizedBox(
                                height: 45,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 9,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '${args.member}',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'SpoqaHanSansNeo-Medium',
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Text(
                                        '차량입니다.',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'SpoqaHanSansNeo-Light',
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 423,
                          height: 272,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/video_sample.png'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TopContentComponent(firstText: '쿠폰 인식', secondText: '선택 내용'),
          ],
        ),
      ),
    );
  }
}