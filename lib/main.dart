import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



const d_green = Color(0xFF54D3C2);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels booking',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            height: 300,
            color: Colors.blue,),
            Container(
              height: 1500,
              color: Colors.red,),
        ],) ,)
    );
  }
}


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back, 
          color: Colors.grey[800],
          size: 20,
      ),
        onPressed: null,
      ),
      title: Text(
        'Accueil',
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),),
        actions: [
          IconButton(
        icon: Icon(
          Icons.favorite_outline_rounded, 
          color: Colors.grey[800],
          size: 20,
      ),
        onPressed: null,
      ),
      IconButton(
        icon: Icon(
          Icons.place_rounded, 
          color: Colors.grey[800],
          size: 20,
      ),
        onPressed: null,
      ),
        ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}