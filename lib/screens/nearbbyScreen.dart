import'package:flutter/material.dart';
import 'package:rahand3/bottom_navigation.dart';
class NearByScreen extends StatelessWidget {
   NearByScreen({super.key});

  @override
  Widget build(BuildContext context) { 
    return   Scaffold(
      bottomNavigationBar: Bottom_navbar(indexpage: 2,),
      body: const Center(
        child: Text('NearBy Screen'),
      ),
    );
  }
}