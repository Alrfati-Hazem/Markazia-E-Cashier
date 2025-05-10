import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../di/injection.dart';
import 'app_config.dart';
import 'e_cashier_app.dart';

void initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  _initAppConfig();
  await initDependencies();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  // START: ScreenUtil Initialize //
  if (kReleaseMode) {
    await ScreenUtil.ensureScreenSize();
  }
  // END: ScreenUtil Initialize //

  // START: Screen Oreintation //
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // END: Screen Oreintation //

  runApp(
    ScreenUtilInit(
      designSize: const Size(1080, 1920),
      minTextAdapt: true,
      builder: (_, __) => ECashierApp(),
    ),
  );
}

Future<void> _initAppConfig() async {
  final config =
      {
        Flavor.prod.name: appProdConfig,
        Flavor.stage.name: appStageConfig,
        Flavor.dev.name: appDevConfig,
      }[appFlavor] ??
      appDevConfig;

  AppConfig.init(config);
}
