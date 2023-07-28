import 'package:flutter/material.dart';
import 'package:sparkplus_project_modify_flutter/components/product/Coupon_design_component.dart';
import 'package:sparkplus_project_modify_flutter/components/top/top_content_component.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';

class SparkPlusCouponWashPage extends StatefulWidget {
  const SparkPlusCouponWashPage({super.key});

  @override
  State<SparkPlusCouponWashPage> createState() => _SparkPlusCouponWashPageState();
}

class _SparkPlusCouponWashPageState extends State<SparkPlusCouponWashPage> {
  @override
  Widget build(BuildContext context) {
    SizeMedia size = SizeMedia();
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
                      padding: EdgeInsets.only(top: 70),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '무료 쿠폰 사용',
                            style: TextStyle(
                              fontSize:35,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'SpoqaHanSansNeo-Light',
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 25),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 138,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/button-wash.png'),
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
                    child: CouponDesignComponent(),
                  ),
                ],
              ),
            ),
            TopContentComponent(firstText: '쿠폰 사용', secondText: '선택 내용'),
          ],
        ),
      ),
    );
  }
}