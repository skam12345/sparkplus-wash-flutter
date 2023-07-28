import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/args/carno_main_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/args/coupon_main_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/pad/consonant_pad_component.dart';
import 'package:sparkplus_project_modify_flutter/components/pad/num_pad_component.dart';
import 'package:sparkplus_project_modify_flutter/components/pad/region_pad_component.dart';
import 'package:sparkplus_project_modify_flutter/components/top/top_content_component.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';
import 'package:sparkplus_project_modify_flutter/view_model/main_view_model.dart';

class SparkPlusMainPage extends StatefulWidget {
  const SparkPlusMainPage({super.key});

  @override
  State<SparkPlusMainPage> createState() => _SparkPlusMainPageState();
}

class _SparkPlusMainPageState extends State<SparkPlusMainPage> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    MainViewModel model = context.watch<MainViewModel>();
    SizeMedia size = SizeMedia();
    return Scaffold(
      key: scaffoldKey,
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
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 80),
                        SizedBox(
                          height: 297,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/sparkplus/one_time/main', arguments: CarNoMainOpt(carNo: model.carNo));
                                  },
                                  child: Container(
                                    width: 169,
                                    height: 297,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/service-button-oneWash.png'), 
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/sparkplus/membership/main', arguments: CarNoMainOpt(carNo: model.carNo));
                                  },
                                  child: Container(
                                    width: 169,
                                    height: 297,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/service-button-membership.png'), 
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/sparkplus/coupon/main', arguments: CouponMainOpt(first: model.regionNo, second: model.secondNo, third: model.thirdNo, fourth: model.finalNo, carNo: model.carNo, member: model.member));
                                  },
                                  child: Container(
                                    width: 169,
                                    height: 297,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/service-button-GIFT-use.png'), 
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 202,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 539,
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/service-button-FLEET-payment-disabled.png'),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                  ),
                                  
                                ),
                              ),
                              SizedBox(height: 2),
                              Container(
                                width: 539,
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/service-button-GIFTpay-disabled.png'),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 140,
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
                                          Container(
                                            width: 143,
                                            height: 79,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/button-first-screen-disabled.png'),
                                                filterQuality: FilterQuality.high,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 152,
                                            height: 79,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/button-back-screen-disabled.png'),
                                                filterQuality: FilterQuality.high,
                                                fit: BoxFit.fill,
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
                                    '${model.regionNo}',
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
                                    '${model.secondNo}',
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
                                    '${model.thirdNo}',
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
                                    '${model.finalNo}',
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
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {
                                model.showModifyContent();
                              },
                              child: Container(
                                width: 149,
                                height: 64,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/button-CarNumber-Modify.png'),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
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
                                        '${model.carNo}',
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
                                        '${model.member}',
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
          TopContentComponent(firstText: '세차 서비스 선택', secondText: '차량정보'),
          Visibility(
            visible: model.showModifyCarNo,
            child: SizedBox(
              width: size.getWidth(context),
              height: size.getHeight(context),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 430,
                  height: 651,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/background_basic-background.png'),
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 35),
                          SizedBox(
                            height: 48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    model.setTapDest('region');
                                  },
                                  child: Container(
                                    width: 90,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: model.tapDest == 'region' ? Color.fromRGBO(191, 190, 187, 0.8) : Colors.transparent,
                                      border: Border(bottom: BorderSide(width: 1, color: Colors.black,)),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${model.region}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize:  30,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'SpoqaHanSansNeo-Light',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    model.setTapDest('kind');
                                  },
                                  child: Container(
                                    width: 95,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: model.tapDest == 'kind' ? Color.fromRGBO(191, 190, 187, 0.8) : Colors.transparent,
                                      border: Border(bottom: BorderSide(width: 1, color: Colors.black,)),
                                    ),
                                    child: Text(
                                      '${model.kind}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize:  30,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'SpoqaHanSansNeo-Light',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    model.setTapDest('caruse');
                                  },
                                  child: Container(
                                    width: 54,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: model.tapDest == 'caruse' ? Color.fromRGBO(191, 190, 187, 0.8) : Colors.transparent,
                                      border: Border(bottom: BorderSide(width: 1, color: Colors.black,)),
                                    ),
                                    child: Text(
                                      '${model.caruse}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize:  30,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'SpoqaHanSansNeo-Light',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    model.setTapDest('recognize');
                                  },
                                  child: Container(
                                    width: 124,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: model.tapDest == 'recognize' ? Color.fromRGBO(191, 190, 187, 0.8) : Colors.transparent,
                                      border: Border(bottom: BorderSide(width: 1, color: Colors.black,)),
                                    ),
                                    child: Text(
                                      '${model.recognize}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize:  30,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'SpoqaHanSansNeo-Light',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 35),
                          SizedBox(
                            height: 500,
                            child: NumPadComponent(contexts: context),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: model.tapDest == 'region' ? true : false,
                        child: Container(
                          width: 416,
                          height: 434,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: RegionPadComponent(),
                        ),
                      ),
                      Visibility(
                        visible: model.tapDest == 'caruse' ? true: false,
                        child: ConsonantPadComponent(),
                      )
                    ],
                  ),
                ),
              ), 
            ),
          ),
          Visibility(
            visible: model.wait,
            child: Container(
              width: size.getWidth(context),
              height: size.getHeight(context),
              padding: EdgeInsets.only(top: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                  SizedBox(width: 5),
                  Container(
                    width: size.getWidth(context) * 0.55,
                    height: size.getHeight(context) * 0.75,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background_basic-background.png'),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Container(
                          width: 517,
                          height: 440,
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
                              SizedBox(height: 35),
                              Text(
                                '정상적으로 결제가 완료되었습니다.\n하단의 영수증을 확인해주세요',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'SpoqaHanSansNeo-Light',
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                width: 385,
                                height: 0.5,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '차단기가 완전히 올라 갈 때까지\n잠시만 기다려주세요!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'SpoqaHanSansNeo-Light',
                                  color: Color(0xffE13147),
                                )
                              ),
                              SizedBox(height: 30),
                              Container(
                                width: 166,
                                height: 155,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/payment-image-STOP.png'),
                                    filterQuality: FilterQuality.high,
                                    fit:BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: model.enter,
            child: Container(
              width: size.getWidth(context),
              height: size.getHeight(context),
              padding: EdgeInsets.only(top: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  Container(
                    width: size.getWidth(context) * 0.55,
                    height: size.getHeight(context) * 0.75,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background_basic-background.png'),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: 517,
                      height: 440,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/background-left-Credit-Card-box.png'),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 90),
                          Text(
                            '차단기가 완전히 올라가면\n천천히 진입해주세요!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'SpoqaHanSansNeo-Light',
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 45),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/sparkplus/');
                            },
                            child: Container(
                              width: 224,
                              height: 151,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/payment-image-Thankyou.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: model.indicator,
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