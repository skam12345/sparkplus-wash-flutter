import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/args/carno_main_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/product/oneTime_design_component.dart';
import 'package:sparkplus_project_modify_flutter/components/top/top_content_component.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_main_view_model.dart';

class SparkPlusOneTimeMainPage extends StatefulWidget {
  const SparkPlusOneTimeMainPage({super.key});

  @override
  State<SparkPlusOneTimeMainPage> createState() => _SparkPlusOneTimeMainPageState();
}

class _SparkPlusOneTimeMainPageState extends State<SparkPlusOneTimeMainPage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    OneTimeMainViewModel model = context.watch<OneTimeMainViewModel>();
    SizeMedia size = SizeMedia();
    if(i == 0) {
      model.getOneTimeProduct();
      i++;
    }
    final args = ModalRoute.of(context)!.settings.arguments as CarNoMainOpt;
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
                  child: model.product.length == 0 ? Center(
                    child: CircularProgressIndicator(
                      color: Colors.red,
                      strokeWidth: 2.0,
                    ),
                  )  :Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 45),
                      Row(
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
                            '1회권 구매',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'SpoqaHanSansNeo-Light', 
                              color: Color(0xff153665),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              model.selectMenu(model.prod_name01, model.prod_fee01, '1', model.main_img01, model.prod_code01);
                            },
                            child: Container(
                              width: 520,
                              height: 142,
                              padding: EdgeInsets.only(left: 90, right: 20, top: 20, bottom: 20),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/product/${model.main_img01}.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 9,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${model.prod_name01}',
                                          style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'SpoqaHanSansNeo-Medium',
                                            color: const Color.fromARGB(255, 36, 36, 36),
                                          ),
                                        ),
                                        Text(
                                          '${model.prod_desc01}',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'SpoqaHanSansNeo-Medium',
                                            color: Color(0xffff5e5e),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,                                  
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${model.prod_fee01}',
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'SpoqaHanSansNeo-Medium',
                                          color: Color(0xff2a6bee),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              model.selectMenu(model.prod_name02, model.prod_fee02, '2', model.main_img02, model.prod_code02);
                            },
                            child: Container(
                              width: 500,
                              height: 120,
                              padding: EdgeInsets.only(left: 90, right: 20, top: 20, bottom: 20),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/product/${model.main_img02}.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 9,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${model.prod_name02}',
                                          style: TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'SpoqaHanSansNeo-Medium',
                                            color: const Color.fromARGB(255, 36, 36, 36),
                                          ),
                                        ),
                                        Text(
                                          '${model.prod_desc02}',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'SpoqaHanSansNeo-Medium',
                                            color: Color(0xffff5e5e),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,                                 
                                     child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${model.prod_fee02}',
                                        style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'SpoqaHanSansNeo-Medium',
                                          color: Color(0xff2a6bee),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              model.selectMenu(model.prod_name03, model.prod_fee03, '3', model.main_img03, model.prod_code03);
                            },
                            child: Container(
                              width: 470,
                              height: 109,
                              padding: EdgeInsets.only(left: 90, right: 20, top: 20, bottom: 20),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/product/${model.main_img03}.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 9,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${model.prod_name03}',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'SpoqaHanSansNeo-Medium',
                                            color: const Color.fromARGB(255, 36, 36, 36),
                                          ),
                                        ),
                                        Text(
                                          '${model.prod_desc03}',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'SpoqaHanSansNeo-Medium',
                                            color: Color(0xffff5e5e),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,                                  
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${model.prod_fee03}',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'SpoqaHanSansNeo-Medium',
                                          color: Color(0xff2a6bee),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              model.selectMenu(model.prod_name04, model.prod_fee04, '4', model.main_img04, model.prod_code04);
                            },
                            child: Container(
                              width: 440,
                              height: 98,
                              padding: EdgeInsets.only(left: 90, right: 20, top: 20, bottom: 20),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/product/${model.main_img04}.png'),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 9,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${model.prod_name03}',
                                          style: TextStyle(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'SpoqaHanSansNeo-Medium',
                                            color: const Color.fromARGB(255, 36, 36, 36),
                                          ),
                                        ),
                                        Text(
                                          '${model.prod_desc03}',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'SpoqaHanSansNeo-Medium',
                                            color: Color(0xffff5e5e),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,                                  
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${model.prod_fee03}',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'SpoqaHanSansNeo-Medium',
                                          color: Color(0xff2a6bee),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
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
                                            model.clear();
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
                                      child: InkWell(
                                        onTap: () {
                                          model.isAvailablePayButton(context, args.carNo);
                                        },
                                        child: Container(
                                          width: 232,
                                          height: 79,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(model.isSelect ?  'assets/button-pay.png':'assets/button-pay-disabled.png'),
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
          TopContentComponent(firstText: '세차 서비스 선택', secondText: '선택내용'),
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