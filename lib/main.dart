import 'package:assignment_two/view/login/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'controller/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  runApp(ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MyApp(),),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Healthy Eating",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomePage(),
    );
  }
}
