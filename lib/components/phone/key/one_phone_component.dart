import 'package:flutter/material.dart';

class OnePhoneComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final String content;
  OnePhoneComponent({
    required this.onPressed,
    required this.content,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 80,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffF9FAFC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(width: 2, color: Color(0xff486DB2)),
          ),
        ),
        child: Text(
          content,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            fontFamily: 'SpoqaHanSansNeo-Medium',
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}