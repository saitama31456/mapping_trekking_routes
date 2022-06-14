import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mapping_trekking_routes/constants/classes.dart';
import 'package:mapping_trekking_routes/routing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mapping Trekking Routes',
      onGenerateRoute: Routing.generateRoute,
      initialRoute: Classes.splashScreen,
      debugShowCheckedModeBanner: false,
    );
  }
}

