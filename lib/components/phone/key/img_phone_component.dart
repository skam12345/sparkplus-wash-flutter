import 'package:flutter/material.dart';

class ImgPhoneComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final String content;
  ImgPhoneComponent({
    required this.onPressed,
    required this.content,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: 117,
        height: 90,
        child: Image.asset(
          'assets/num_$content.png',
          filterQuality: FilterQuality.high,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}