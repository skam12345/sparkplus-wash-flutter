import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/args/option_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/product/oneTime_design_component.dart';
import 'package:sparkplus_project_modify_flutter/components/top/top_content_component.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_main_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_option_view_model.dart';
// import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_payment_view_model.dart';

class SparkPlusOneTimePayMentMethodPage extends StatefulWidget {
  const SparkPlusOneTimePayMentMethodPage({super.key});

  @override
  State<SparkPlusOneTimePayMentMethodPage> createState() => _SparkPlusOneTimePayMentMethodPageState();
}

class _SparkPlusOneTimePayMentMethodPageState extends State<SparkPlusOneTimePayMentMethodPage> {
  @override
  Widget build(BuildContext context) {
    // OneTimePayMentViewModel model = context.watch<OneTimePayMentViewModel>();
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '할인쿠폰을 사용하실 경우 이 화면에서',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'SpoqaHanSansNeo-Light',
                              color: Colors.black,
                            )
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '할인쿠폰 QR코드를 하단의 QR스캐너에 갖다대어 주세요.',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'SpoqaHanSansNeo-Light',
                              color: Colors.black,
                            )
                          )
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/sparkplus/one_time/credit', arguments: OptionOpt(prodCode: args.prodCode, prodName: args.prodName, prodFee: args.prodFee, carNo: args.carNo, optionCode: args.optionCode, optionName: args.optionName, washFee: args.washFee, optionFee: args.optionFee, payFee: args.payFee, plc: args.plc));
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
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/sparkplus/one_time/easypay');
                            },
                            child: Container(
                              width: 260,
                              height: 186,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/payment-easy-payment.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fill,
                                ),
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
                                            option.clear();
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