import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/key/key_pad_component.dart';
import 'package:sparkplus_project_modify_flutter/view_model/main_view_model.dart';

class NumPadComponent extends StatelessWidget {
  final BuildContext? contexts;
  const NumPadComponent({
    this.contexts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final MainViewModel model = context.watch<MainViewModel>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(model.numPad.length, 
      (i) => 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(model.numPad[i].length, 
          (j) =>
            KeyPadComponent(content: model.numPad[i][j], contexts: contexts!),
          ),
        ), 
      ),
    );
  }
}