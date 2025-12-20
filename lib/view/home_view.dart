
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/model/zoom_provider.dart';

class HomeView extends StatefulWidget{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double sliderValue = 5;
  @override
  Widget build(BuildContext context) {
  final watchProvider = context.watch<ZoomProvider>();
  final readProvider = context.read<ZoomProvider>();
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
              fontSize: watchProvider.value,
              fontWeight: FontWeight.w500,
            ),
            ),
            Text(
              watchProvider.value.toString()
            ),
            Slider(
              inactiveColor: const Color.fromARGB(255, 151, 213, 242),
              activeColor: Colors.blue,
              thumbColor: Colors.blue,
              min: 5,
              max: 60,
              value: watchProvider.value,
              onChanged: (value){
                readProvider.setValue = value;
                // setState(() {
                //   sliderValue = value;
                // });  
              },
            ),
      
        ],
      ),
    ),
   );
  }
}