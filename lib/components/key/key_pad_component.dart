import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/view_model/main_view_model.dart';

class KeyPadComponent extends StatelessWidget {
  final String content;
  final BuildContext contexts;
  KeyPadComponent({
    required this.content,
    required this.contexts,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    MainViewModel model = context.watch<MainViewModel>();
    return Container(
      width: 128,
      height: 110,
      child: ElevatedButton(
        onPressed: () {
          model.clickToPad(content, contexts);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Color(0xffBDBBB7), width: 2),
          )
        ),
        child: Text(
          '$content',
          style: TextStyle(
            fontSize: content == '지움' || content == '저장' ? 24:48,
            fontWeight: FontWeight.w700,
            fontFamily: 'SpoqaHanSansNeo-Light',
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}