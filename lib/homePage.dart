import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pabel/Pabel.dart';
import 'package:pabel/data.dart';
import 'package:pabel/model_cate.dart';
import 'package:pabel/searchBar.dart';
import 'package:google_fonts/google_fonts.dart';



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
        // actions: [
        //   Tab(
        //     icon: Image.asset("images/git.png",
        //     height: 38,
        //     width: 38,),
        //   )
        // ],
        title: PabelLogo(),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Container(
                    alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("Popular Searches",style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),),
                      ))
                ],
              ),
              // SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                height: 80,
                child: ListView.builder(
                    itemCount: categories.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                    itemBuilder:(context, index){
                      return CategoriesTile(
                        title:categories[index].categoriesName ,
                        imgUrl: categories[index].imgUrl,
                      );
                    }),
              ),
            ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("Trending Today",style:GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),),
                  ))
            ],
          ),
        ),
      ),
      floatingActionButton: searchBar(),
    );
  }
}

class CategoriesTile extends StatelessWidget {
  String imgUrl;
  String title;
  CategoriesTile({@required this.title,@required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(
        children: <Widget>[
          Container(

          margin: EdgeInsets.only(right: 5),
            child: Image.network(imgUrl,
            height: 120,
            width: 160,
            fit: BoxFit.cover),
          ),
          Center(
            child: Container(
              width: 160,
              alignment: Alignment.center,
              child: Text(title,  style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  ),),
            ),
          ),

        ],
      ),
    );
  }
}

