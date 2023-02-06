import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiket_com_clone/view/home/home_view.dart';
import 'package:tiket_com_clone/view_models.dart/home_view_models.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeViewModels(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
