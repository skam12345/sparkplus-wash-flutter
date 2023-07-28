import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/phone/key/img_phone_component.dart';
import 'package:sparkplus_project_modify_flutter/components/phone/key/one_phone_component.dart';
import 'package:sparkplus_project_modify_flutter/view_model/membership/membership_phone_input_view_model.dart';

class PhonePadComponent extends StatelessWidget {
  const PhonePadComponent({super.key});

  @override
  Widget build(BuildContext context) {
    MembershipPhoneInputViewModel model = context.watch<MembershipPhoneInputViewModel>();
    return SizedBox(
      child: Column(
        children: List.generate(model.keyPad.length, 
        (i) =>
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(model.keyPad[i].length, 
            (j) =>
              model.keyPad[i][j] == '010' ? 
              OnePhoneComponent(
                onPressed: () {
                  model.clickKeyPad(model.keyPad[i][j]);
                }, 
                content: model.keyPad[i][j]
              )
              :
              ImgPhoneComponent(
                onPressed: () {
                  model.clickKeyPad(model.keyPad[i][j]);
                }, 
                content: model.keyPad[i][j],
              ),
            ), 
          ),
        ),
      ),
    );
  }
}