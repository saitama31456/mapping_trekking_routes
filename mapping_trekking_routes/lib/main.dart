import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mapping_trekking_routes/constants/classes.dart';
import 'package:mapping_trekking_routes/data/api_repo.dart';
import 'package:mapping_trekking_routes/routing.dart';
import 'package:mapping_trekking_routes/store/search_store/search_store.dart';
import 'package:mapping_trekking_routes/store/trail_store/trail_store.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ApiRepository();
  runApp(MultiProvider(
    providers: [
      Provider(create: (_) => TrailStore()),
      Provider(create: (_) => SearchStore())
    ],
    child: const MyApp()));
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

