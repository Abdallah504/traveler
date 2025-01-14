import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:traveler/core/di/di.dart';
import 'package:traveler/logic/main-app-provider.dart';
import 'package:traveler/presentation/screens/splash-screen.dart';

import 'data/offline/sq-helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  SqlDB sqlDB = SqlDB();
  await sqlDB.db;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> di<MainAppProvider>()..getAll())
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          title: 'Traveler',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: SplashScreen(),
        ),
      ),
    );
  }
}
