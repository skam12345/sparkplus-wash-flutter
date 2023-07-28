import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/args/option_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/product/oneTime_design_component.dart';
import 'package:sparkplus_project_modify_flutter/components/top/top_content_component.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_credit_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_main_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_option_view_model.dart';

class SparkPlusOneTimeCreditPage extends StatefulWidget {
  const SparkPlusOneTimeCreditPage({super.key});

  @override
  State<SparkPlusOneTimeCreditPage> createState() => _SparkPlusOneTimeCreditPageState();
}

class _SparkPlusOneTimeCreditPageState extends State<SparkPlusOneTimeCreditPage> {
  @override
  Widget build(BuildContext context) {
    OneTimeCreditViewModel model = context.watch<OneTimeCreditViewModel>();
    OneTimeMainViewModel main = context.watch<OneTimeMainViewModel>();
    OneTimeOptionViewModel option = context.watch<OneTimeOptionViewModel>();
    SizeMedia size = SizeMedia();
    final args = ModalRoute.of(context)!.settings.arguments as OptionOpt;
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 80),
                      Text(
                        '신용/체크카드 결제',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'SpoqaHanSansNeo-Medium',
                          color: Color(0xff002357),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        width: 512,
                        height: 449,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/background-left-Credit-Card-box.png'),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.contain
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 35),
                            Text(
                              '하단의 신용카드 투입구에\n화살표 방향으로\n신용카드를 꽂아주세요',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'SpoqaHanSansNeo-Light',
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 25),
                            InkWell(
                              onTap: () {
                                model.callProccessAPI(args, context, main, option);
                              },
                              child: Container(
                                width: 325,
                                height: 211,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/payment-picture-credit-card.png'),
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
                                            model.call = false;
                                            Navigator.pushNamed(context, '/sparkplus/recognize');
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
                                            model.call = false;
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
                Expanded(
                  flex: 5,
                  child: OneTimeDesignComponent(),
                )
              ],
            ),
          ),
          TopContentComponent(firstText: '결제하기', secondText: '선택 내용'),
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