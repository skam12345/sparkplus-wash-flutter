import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/args/membership_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/product/membership_design_phone_component.dart';
import 'package:sparkplus_project_modify_flutter/components/top/top_content_component.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';
import 'package:sparkplus_project_modify_flutter/view_model/membership/membership_main_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/membership/membership_phone_input_view_model.dart';

class SparkPlusMembershipPaymentMethodPage extends StatefulWidget {
  const SparkPlusMembershipPaymentMethodPage({super.key});

  @override
  State<SparkPlusMembershipPaymentMethodPage> createState() => _SparkPlusMembershipPaymentMethodPageState();
}

class _SparkPlusMembershipPaymentMethodPageState extends State<SparkPlusMembershipPaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    SizeMedia size = SizeMedia();
    MembershipPhoneInputViewModel model = context.watch<MembershipPhoneInputViewModel>();
    MembershipMainViewModel main = context.watch<MembershipMainViewModel>();
    final args = ModalRoute.of(context)!.settings.arguments as MembershipOpt;
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
                      SizedBox(height: 175),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/sparkplus/membership/credit', arguments: args);
                            },
                            child: Container(
                              width: 260,
                              height: 186,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/payment-credit.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 260,
                            height: 186,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/payment-cash-disabled.png'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 20),
                          Container(
                            width: 260,
                            height: 186,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/payment-easy-payment-disabled.png'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 170,
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
                                            model.clear();
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
          TopContentComponent(firstText: '세차 서비스 선택', secondText: '선택 내용'),
        ],
      ),
    );
  }
}