import 'package:flutter/material.dart';

class CouponDesignComponent extends StatelessWidget {
  const CouponDesignComponent({super.key});

  @override
  Widget build(BuildContext context) {
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
                  SizedBox(width: 45),
                  Text(
                    '무료 쿠폰 사용',
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
                  Text(
                    '프리미엄 무제한 Spa',
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
                    '●브러쉬',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'SpoqaHanSansNeo-Light',
                      color: Color(0xffA9A9A9),
                    ),
                  ),
                  SizedBox(width: 45),
                  Text(
                    '미사용',
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
              SizedBox(height: 145),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '●잔여횟수',
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
                      '5 회 ',
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