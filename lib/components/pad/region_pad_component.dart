import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/key/key_region_component.dart';
import 'package:sparkplus_project_modify_flutter/view_model/main_view_model.dart';

class RegionPadComponent extends StatelessWidget {
  const RegionPadComponent({super.key});

  @override
  Widget build(BuildContext context) {
    MainViewModel model = context.watch<MainViewModel>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width:15),
            InkWell(
              onTap: () {
                model.close();
              },
              child: Text(
                '×',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'SpoqaHanSansNeo-Light',
                  color: Color(0xffAEAEAE),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(model.regionList.length, 
            (i) =>
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(model.regionList[i].length, 
                (j) => KeyRegionComponent(content: model.regionList[i][j]),
                ),
              ),
            ),
          ),
        ),
      ]
    );
  }
}