
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wanderin/constants.dart';
import 'presentation/router/app_router.dart';

void main()async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: Secrets.supabaseUrl, anonKey: Secrets.supabaseKey);
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatefulWidget {

  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AirBnB',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      onGenerateRoute:_appRouter.onGenerateRoute,
    );
  }
  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }
}


