import 'package:flutter/material.dart';
import 'package:my_navigationbar/services/person_list.dart';
import 'package:my_navigationbar/services/place_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe7a9a9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                personList();
              }, 
              child: const Text("Person List")
              ),
            ElevatedButton(
              onPressed: (){
                placeList();
              }, 
              child: const Text("Place List")
              ),
          ],
        ),
      ),
    );
  }
}