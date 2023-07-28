import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/utils/size_media.dart';
import 'package:sparkplus_project_modify_flutter/view_model/index_view_model.dart';

class SparkPlusIndexPage extends StatefulWidget {
  const SparkPlusIndexPage({super.key});

  @override
  State<SparkPlusIndexPage> createState() => _SparkPlusIndexPageState();
}

class _SparkPlusIndexPageState extends State<SparkPlusIndexPage> {
  @override
  Widget build(BuildContext context) {
    IndexViewModel model = context.watch<IndexViewModel>();
    SizeMedia size = SizeMedia();
    return Scaffold(
      body: Container(
        width: size.getWidth(context),
        height: size.getHeight(context),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/loading_background.png'),
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,
          ),
        ),
        alignment: Alignment.bottomCenter,
        child: Container(
          width: size.getWidth(context),
          height: size.getWidth(context) * 0.12,
          decoration: BoxDecoration(
            color: Color(0xffE4273E),
          ),
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              model.showNext(context);
            },
            child: Text(
              '스파크 플러스와 함께 스마트한 세차!',
              style: TextStyle(
                fontSize: 38,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'SpoqaHanSansNeo-Light',
              ),
            ),
          ),
        ),
      ),
    );
  }
}