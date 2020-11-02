import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pabel/Smaple.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //fetching categorie data from model_cate.dart
  List<Model_cate> categories = new List();
  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SampleLogo(),
      ),
      backgroundColor: Colors.white,
      body: ////
    
    );
  }
}
