import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_main_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_option_view_model.dart';

class OneTimeDesignComponent extends StatelessWidget {
  const OneTimeDesignComponent({super.key});

  @override
  Widget build(BuildContext context) {
    OneTimeMainViewModel mainViewModel = context.watch<OneTimeMainViewModel>();
    OneTimeOptionViewModel optionViewModel = context.watch<OneTimeOptionViewModel>();
    return Column(
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
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Text(
                    '●서비스',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SpoqaHanSansNeo-Light',
                      color: Color(0xffA9A9A9),
                    ),
                  ),
                  SizedBox(width: 40),
                  Text(
                    '1회권 구매',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SpoqaHanSansNeo-Light',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Container(
                width: 400,
                height: 0.5,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Text(
                    '●세차 메뉴',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SpoqaHanSansNeo-Light',
                      color: Color(0xffA9A9A9),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 270,
                    child: Text(
                      '${mainViewModel.selectProduct == '' ? '- ': optionViewModel.select_name == '' ? mainViewModel.selectProduct : mainViewModel.selectProduct + optionViewModel.select_name}',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'SpoqaHanSansNeo-Light',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Container(
                width: 400,
                height: 0.5,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Text(
                    '●세차 금액',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SpoqaHanSansNeo-Light',
                      color: Color(0xffA9A9A9),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    '${mainViewModel.selectFee == '' ? '-': optionViewModel.option_price == 0 ?  mainViewModel.selectFee :NumberFormat('###,###,###,###').format(int.parse(mainViewModel.selectFee.replaceAll(',', '')) + optionViewModel.option_price)} 원',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SpoqaHanSansNeo-Light',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Container(
                width: 400,
                height: 0.5,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Text(
                    '●할인 금액',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SpoqaHanSansNeo-Light',
                      color: Color(0xffA9A9A9),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text.rich(
                    TextSpan(
                      text: '- %  ',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'SpoqaHanSansNeo-Light',
                        color: Color(0xffCE0620),
                      ),
                      children: [
                        TextSpan(
                          text: ' - 원',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'SpoqaHanSansNeo-Light',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Container(
                width: 400,
                height: 0.5,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Text(
                    '●옵션 금액',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SpoqaHanSansNeo-Light',
                      color: Color(0xffA9A9A9),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    '${NumberFormat('###,###,###,###').format(optionViewModel.option_price)} 원',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SpoqaHanSansNeo-Light',
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '●결제 금액',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SpoqaHanSansNeo-Light',
                      color: Colors.black
                    ),
                  ),
                  Container(
                    width: 208,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Color(0xfffffA9E),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    alignment: Alignment.centerRight,
                    child: Text(
                      '${mainViewModel.selectFee == '' ? '-': optionViewModel.total_price != 0 ? NumberFormat('###,###,###,###').format(optionViewModel.total_price) :mainViewModel.selectFee} 원  ',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'SpoqaHanSansNeo-Light',
                        color: Colors.black
                      ),
                    ),
                  ),
                ],
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
    );
  }
}