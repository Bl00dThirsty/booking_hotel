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
          SearchSection(),
          HotelSection(),
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

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),


      child: Column(
        children: [
          
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Yaoundé',
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                  ),
                  ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300
                      ),
                    
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(25),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: (){},
                  child: Icon(
                    Icons.search,
                    size: 26,
                  ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), 
                  padding: EdgeInsets.all(10),
                  backgroundColor: d_green,
                  foregroundColor: Colors.white,
                ),
                  ),
              )
            ],
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Choisir la date',
                    style: GoogleFonts.nunito(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    ),
// SizedBox pour séparer les deux champs texte



                  SizedBox(
                    height: 15,
                  ),




                    Text('12 Dec - 22 Dec',
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 17,
                    ),)
                  ],
                  ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nombre de chambres',
                    style: GoogleFonts.nunito(
                      color: Colors.grey,
                      fontSize: 15,
                    ),),
// SizedBox pour séparer les deux champs texte



                  SizedBox(
                    height: 15,
                  ),


                    Text('1 Chambre - Adulte',
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 17,
                      //fontWeight: FontWeight.lerp(FontWeight.w300, FontWeight.w400, 0.9),
                    ),
                    )
                  ],
                  ),
              ),
            ]
            )
        ],
      ),
    );
  }
}

class HotelSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2000,
      color: Colors.white,
    );
  }
}