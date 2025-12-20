
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/model/zoom_provider.dart';
import 'package:provider_app/view/home_view.dart';


void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
 return ChangeNotifierProvider(
  create:(context) => ZoomProvider(),
   child: MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeView(),
   ),
 );
 
 // set provider

  }
}

