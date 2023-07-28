import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/product/oneTime_design_component.dart';
import 'package:sparkplus_project_modify_flutter/components/top/top_content_component.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_easypay_view_model.dart';

class SparkPlusOneTimeEasyPayPage extends StatefulWidget {
  const SparkPlusOneTimeEasyPayPage({super.key});

  @override
  State<SparkPlusOneTimeEasyPayPage> createState() => _SparkPlusOneTimeEasyPayPageState();
}

class _SparkPlusOneTimeEasyPayPageState extends State<SparkPlusOneTimeEasyPayPage> {
  @override
  Widget build(BuildContext context) {
    OneTimeEasyPayViewModel model = context.watch<OneTimeEasyPayViewModel>();
    SizeMedia size = SizeMedia();
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
                        '간편 결제',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'SpoqaHanSansNeo-Medium',
                          color: Color(0xff002357),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: 517,
                        height: 461,
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
                            SizedBox(height: 35),
                            Text(
                              '하단의 QR스캐너 소비자의\n카카오페이 앱 또는 N페이 앱의\nQR코드 결제화면을 띄어서\n갖다대어 주세요',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'SpoqaHanSansNeo-Light',
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 2),
                            Container(
                              width: 325,
                              height: 211,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage('assets/kakao.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.cover,
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
        ],
      ),
    );
  }
}