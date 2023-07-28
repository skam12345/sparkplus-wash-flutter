import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/args/membership_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/phone/phone_pad_component.dart';
import 'package:sparkplus_project_modify_flutter/components/product/membership_design_phone_component.dart';
import 'package:sparkplus_project_modify_flutter/components/top/top_content_component.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';
import 'package:sparkplus_project_modify_flutter/view_model/membership/membership_main_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/membership/membership_phone_input_view_model.dart';

class SparkPlusMembershipPhoneInputPage extends StatefulWidget {
  const SparkPlusMembershipPhoneInputPage({super.key});

  @override
  State<SparkPlusMembershipPhoneInputPage> createState() => _SparkPlusMembershipPhoneInputPageState();
}

class _SparkPlusMembershipPhoneInputPageState extends State<SparkPlusMembershipPhoneInputPage> {
  @override
  Widget build(BuildContext context) {
    MembershipPhoneInputViewModel model = context.watch<MembershipPhoneInputViewModel>();
    MembershipMainViewModel main = context.watch<MembershipMainViewModel>();
    final args = ModalRoute.of(context)!.settings.arguments as MembershipOpt;
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
                      SizedBox(height: 45),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/product-select-titleIcon-membership.png', 
                            width: 67, 
                            height: 58,
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            '멤버쉽 구매',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'SpoqaHanSansNeo-Light', 
                              color: Color(0xff153665),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 520,
                        height: 500,
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.black),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(2.0, 5.0),
                              blurRadius: 10.0,
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 93,
                              decoration: BoxDecoration(
                                color: Color(0xffFFFA9E),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 2, color: Color(0xffCEC956)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                model.inputBox,
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 9,
                                  child: PhonePadComponent(),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: SizedBox(
                                    height: 350,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '이용정책',
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xffbfbfbf),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 134,
                                          height: 90,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              model.recognizePhoneNumber(context, args);
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(0xff393DAC),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                side: BorderSide(width: 5, color: Color(0xff393DAC)),
                                              ),
                                            ),
                                            child: Text(
                                              '등록',
                                              style: TextStyle(
                                                fontSize: 36,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'SpoqaHanSansNeo-Medium',
                                                color: Colors.white,
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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 112,
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
                                            main.backClear();
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
                  child: MembershipDesignPhoneComponent(),
                ),
              ],
            ),
          ),
          TopContentComponent(firstText: '휴대폰 번호 입력', secondText: '선택 내용'),
        ],
      ),
    );
  }
}