import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparkplus_project_modify_flutter/router/sparkplus_route.dart';
import 'package:sparkplus_project_modify_flutter/view_model/index_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/main_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/membership/membership_credit_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/membership/membership_main_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/membership/membership_phone_input_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_credit_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_easypay_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_main_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_option_view_model.dart';
import 'package:sparkplus_project_modify_flutter/view_model/onetime/onetime_payment_view_model.dart';
import 'package:window_manager/window_manager.dart';

void main() {
  screenWindow();
  runApp(const MyApp());
}

void screenWindow() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();
  windowManager.setFullScreen(true);
  windowManager.setResizable(true);
  WindowOptions windowOptions = const WindowOptions(
    backgroundColor: Colors.transparent,
    alwaysOnTop: true,
    // size: Size(1080, 1920),
    size: Size(1024, 768),
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
    // await windowManager.setTitleBarStyle(TitleBarStyle.hidden);
    await windowManager.setPosition(Offset(448, 156));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      // 통합
        ChangeNotifierProvider(create: (BuildContext context) => IndexViewModel()),
        ChangeNotifierProvider(create: (BuildContext context) => MainViewModel()),
// <--------------------------------------------------------------------------------------------------->
      // 1회권
        ChangeNotifierProvider(create: (BuildContext context) => OneTimeMainViewModel()),
        ChangeNotifierProvider(create: (BuildContext context) => OneTimeOptionViewModel()),
        ChangeNotifierProvider(create: (BuildContext context) => OneTimePayMentViewModel()),
        ChangeNotifierProvider(create: (BuildContext context) => OneTimeCreditViewModel()),
        ChangeNotifierProvider(create: (BuildContext context) => OneTimeEasyPayViewModel()),
// <--------------------------------------------------------------------------------------------------->
    // 멤버쉽
      ChangeNotifierProvider(create: (BuildContext context) => MembershipMainViewModel()),
      ChangeNotifierProvider(create: (BuildContext context) => MembershipPhoneInputViewModel()),
      ChangeNotifierProvider(create: (BuildContext context) => MembershipCreditViewModel()),
// <--------------------------------------------------------------------------------------------------->

      ],
      child: MaterialApp(
        title: 'SparkPlus',
        theme: ThemeData(
          useMaterial3: true,
        ),
        initialRoute: '/sparkplus/recognize',
        routes: SparkPlusRoute.routes,
      ),
    );
  }
}
