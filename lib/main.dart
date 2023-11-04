import 'package:flutter/material.dart';
import 'package:iscapp/controllers/eventsProvider.dart';
import 'package:iscapp/views/screens/splashScreen/splashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => EventsProvider()),
    ],
    child: MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
