import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/view_model/main_view_model.dart';

class KeyRegionComponent extends StatelessWidget {
  final String content;
  KeyRegionComponent({
    required this.content,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    MainViewModel model = context.watch<MainViewModel>();
    return SizedBox(
      width: 116,
      height: 42,
      child: ElevatedButton(
        onPressed: () {
          model.clickToPad(content, context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(width: 1, color: Colors.black),
          )
        ),
        child: Text(
          '$content',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'SpoqaHanSansNeo-Light',
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}