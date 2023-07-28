import 'package:flutter/material.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';

class TopContentComponent extends StatelessWidget {
  final String firstText;
  final String secondText;
  TopContentComponent({
    required this.firstText,
    required this.secondText,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    SizeMedia size = SizeMedia();
    return SizedBox(
      width: size.getWidth(context),
      height: 49,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 130),
          Container(
            width: 285,
            height: 49,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/title-background-left.png'),
                filterQuality: FilterQuality.high,
                fit: BoxFit.fill,
              ),
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  '$firstText',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'SpoqaHanSansNeo-Medium',
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ),
          SizedBox(width: 256),
          Container(
            width: 215,
            height: 45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/title-background-right.png'),
                filterQuality: FilterQuality.high,
                fit: BoxFit.fill,
              ),
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 3),
                Text(
                  '$secondText',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'SpoqaHanSansNeo-Medium',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}