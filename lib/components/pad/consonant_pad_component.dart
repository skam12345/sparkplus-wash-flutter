import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/components/key/key_consonant_componant.dart';
import 'package:sparkplus_project_modify_flutter/components/key/key_region_component.dart';
import 'package:sparkplus_project_modify_flutter/view_model/main_view_model.dart';

class ConsonantPadComponent extends StatelessWidget {
  const ConsonantPadComponent({super.key});

  @override
  Widget build(BuildContext context) {
    MainViewModel model = context.watch<MainViewModel>();
    return Container(
      width: 416,
      height: 434,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: IndexedStack(
        index: model.consonant == '' ? 0 : 1,
        alignment: Alignment.center,
        children: [ 
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 15),
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
                  ),
                ],
              ),
              SizedBox(
                height: 280,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(model.consonantList.length, 
                  (i) =>
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(model.consonantList[i].length,
                        (j) =>
                          KeyConsonantComponent(content: model.consonantList[i][j]),
                      ),
                    ), 
                  ),
                ),
              ),
            ],
          ),
          ListView.builder(
            itemCount: model.consonantArray.length,
            itemBuilder: (context, i) {
              return Visibility(
                visible: model.consonant == model.consonantArray[i] ? true : false,
                child: Container(
                  width: 416,
                  height: 178,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(model.consonantParty[i].length, 
                    (j) =>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(model.consonantParty[i][j].length, 
                        (k) => 
                          KeyRegionComponent(content: model.consonantParty[i][j][k]),
                        ),
                      ), 
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}