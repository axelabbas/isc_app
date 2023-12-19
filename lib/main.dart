import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iscapp/controllers/appBarProvider.dart';
import 'package:iscapp/controllers/eventsProvider.dart';
import 'package:iscapp/views/screens/bottomNavBar.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => EventsProvider()),
    ],
    child: ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: ((context, child) {
        return MaterialApp(
          home: child,
          theme: ThemeData(fontFamily: "Poppins"),
          debugShowCheckedModeBanner: false,
        );
      }),
      child: ChangeNotifierProvider(
          create: (context) => AppBarProvider(), child: bottomNav()),
    ),
  ));
}
