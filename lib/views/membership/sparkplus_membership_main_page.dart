import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/args/carno_main_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/args/membership_opt.dart';
import 'package:sparkplus_project_modify_flutter/components/product/membership_design_component.dart';
import 'package:sparkplus_project_modify_flutter/components/top/top_content_component.dart';
import 'package:sparkplus_project_modify_flutter/utils/constant.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';
import 'package:sparkplus_project_modify_flutter/view_model/membership/membership_main_view_model.dart';

class SparkPlusMembershipMainPage extends StatefulWidget {
  const SparkPlusMembershipMainPage({super.key});

  @override
  State<SparkPlusMembershipMainPage> createState() => _SparkPlusMembershipMainPageState();
}

class _SparkPlusMembershipMainPageState extends State<SparkPlusMembershipMainPage> {
  ScrollController security01 = ScrollController();
  ScrollController membership01 = ScrollController();
  ScrollController service01 = ScrollController();
  int i = 0;
  @override
  Widget build(BuildContext context) {
    MembershipMainViewModel model = context.watch<MembershipMainViewModel>();
    SizeMedia size = SizeMedia();
    final args = ModalRoute.of(context)!.settings.arguments as CarNoMainOpt;
    if(i == 0) {
      model.getMainProductInfo();
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
                  child: model.product.length == 0 ? 
                  Center(
                    child: CircularProgressIndicator(
                      color: Colors.red,
                      strokeWidth: 2.0,
                    ),
                  )
                  :Column(
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
                      SizedBox(height: 30),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              model.selectMenu(model.prod_name01, model.prod_fee01, '14', model.main_img01, model.prod_code01);
                            },
                            child: Container(
                              width: 520,
                              height: 132,
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
                                            fontSize: 30,
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
                              model.selectMenu(model.prod_name02, model.prod_fee02, '15', model.main_img02, model.prod_code02);
                            },
                            child: Container(
                              width: 500,
                              height: 112,
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
                                            fontSize: 28,
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
                              model.selectMenu(model.prod_name03, model.prod_fee03, '16', model.main_img03, model.prod_code03);
                            },
                            child: Container(
                              width: 470,
                              height: 102,
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
                                            fontSize: 26,
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
                              model.selectMenu(model.prod_name04, model.prod_fee04, '17', model.main_img04, model.prod_code04);
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
                                          '${model.prod_name04}',
                                          style: TextStyle(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'SpoqaHanSansNeo-Medium',
                                            color: const Color.fromARGB(255, 36, 36, 36),
                                          ),
                                        ),
                                        Text(
                                          '${model.prod_desc04}',
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
                                        '${model.prod_fee04}',
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              model.showAgreeContainer();
                            },
                            child: Text(
                              '[약관 보기]',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'SpoqaHanSansNeo-Light',
                                color :Color(0xff2002B9),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(
                        height: 98,
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
                                          if(model.isAvailable) {
                                            if(model.security && model.member && model.service) {
                                              Navigator.pushNamed(context, '/sparkplus/membership/phone', arguments: MembershipOpt(carNo: args.carNo, prodCode: model.selectCode, prodName: model.selectProduct, prodFee: int.parse(model.selectFee.replaceAll(',', '')), prodPlc: model.selectPlc));
                                            }else {
                                              showDialog(
                                                context: context, 
                                                builder: (context) {
                                                  return AlertDialog(
                                                    content: Container(
                                                      width: 450,
                                                      height: 280,
                                                      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                        children: [
                                                          Text(
                                                            '약관 동의를 모두 동의\n 해주시기 바랍니다.',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              fontSize: 24,
                                                              fontWeight: FontWeight.w700,
                                                              fontFamily: 'SpoqaHanSansNeo-Light',
                                                              color: Colors.black,
                                                            ),
                                                          ),
                                                          SizedBox(height: 30),
                                                          SizedBox(
                                                            width: double.infinity,
                                                            height: 45,
                                                            child: ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.pop(context);
                                                              },
                                                              style: ElevatedButton.styleFrom(
                                                                backgroundColor: Colors.blueAccent,
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(15),
                                                                ),
                                                              ),
                                                              child: Text(
                                                                '확인',
                                                                style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w700,
                                                                  fontFamily: 'SpoqaHanSansNeo-Light',
                                                                  color: Colors.white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                }, 
                                              );
                                            }
                                          }
                                        },
                                        child: Container(
                                          width: 232,
                                          height: 79,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('${model.payImg}'),
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
                  child: MembershipDesignComponent(),
                )
              ],
            ),
          ),
          TopContentComponent(firstText: '세차 서비스 선택', secondText: '선택 내용'),
          Visibility(
            visible: model.showAgreeComponent,
            child: SizedBox(
              width: size.getWidth(context),
              height: size.getHeight(context),
              child: Align(
                alignment: Alignment.center,
                child:Container(
                  width: 608,
                  height: 636,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 2, color: Colors.black),
                    color: Color(0xffE6EAF3),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '멤버쉽 결제 동의서',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'SpoqaHanSansNeo-Medium',
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '개인정보 취급 동의 (필수)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'SpoqaHanSansNeo-Light',
                              color: Colors.black,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              model.securityCheck();
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(model.secImg),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: 560,
                        height: 110,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.1, color: Colors.black),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.0),
                            ),
                            BoxShadow(
                              color: Colors.white70,
                              spreadRadius: -5.0,
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
                        child: Scrollbar(
                          controller: security01,
                          child: SingleChildScrollView(
                            controller: security01,
                            scrollDirection: Axis.vertical,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    SECURITY,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SpoqaHanSansNeo-Light',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '정기 구독 결제 동의 (필수)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'SpoqaHanSansNeo-Light',
                              color: Colors.black,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              model.memberCheck();
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(model.memImg),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: 560,
                        height: 110,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.1, color: Colors.black),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.0),
                            ),
                            BoxShadow(
                              color: Colors.white70,
                              spreadRadius: -5.0,
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
                        child: Scrollbar(
                          controller: membership01,
                          child: SingleChildScrollView(
                            controller: membership01,
                            scrollDirection: Axis.vertical,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    MEMBERSHIP,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SpoqaHanSansNeo-Light',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '서비스 이용약관 동의 (필수)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'SpoqaHanSansNeo-Light',
                              color: Colors.black,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              model.serviceCheck();
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(model.sevImg),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: 560,
                        height: 110,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.1, color: Colors.black),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.0),
                            ),
                            BoxShadow(
                              color: Colors.white70,
                              spreadRadius: -5.0,
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
                        child: Scrollbar(
                          controller: service01,
                          child: SingleChildScrollView(
                            controller: service01,
                            scrollDirection: Axis.vertical,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    SERVICE,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SpoqaHanSansNeo-Light',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 232,
                            height: 42,
                            child: ElevatedButton(
                              onPressed: () {
                                model.entireAgreeCheck();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff466EB3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(width: 2, color: Colors.black),
                                ),
                              ),
                              child: Text(
                                '전체 동의',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 232,
                            height: 42,
                            child: ElevatedButton(
                              onPressed: () {
                                model.cancelAgreeCheck();
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(width: 2, color: Colors.black),
                                )
                              ),
                              child: Text(
                                '취소',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'SpoqaHanSansNeo-Medium',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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