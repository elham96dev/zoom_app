
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
 return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomeView(),
 );
 
 // set provider

  }
}

class HomeView extends StatefulWidget{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double sliderValue = 5;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueAccent,
      title: Text(
        "Font Size App",
        style: TextStyle(
          color: Colors.white,
          fontSize: 26,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "FlutterApp",
            style: TextStyle(
              color: Colors.black,
              fontSize: sliderValue,
              fontWeight: FontWeight.w500,
            ),
            ),
            Text(
              sliderValue.toString(),
            ),
            Slider(
              inactiveColor: const Color.fromARGB(255, 151, 213, 242),
              activeColor: Colors.blue,
              thumbColor: Colors.blue,
              min: 5,
              max: 60,
              value: sliderValue,
              onChanged: (value){
                setState(() {
                  sliderValue = value;
                });
              })
      
        ],
      ),
    ),
   );
  }
}