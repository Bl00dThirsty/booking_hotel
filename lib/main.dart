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
  final List hotelList = [
    {
      'title': 'Grand Royl Hotel',
      'place': 'Blv. 20 Mai, Yaoundé',
      'distance': 2,
      'review': 37,
      'picture': 'images/hotel_1.png',
      'price': '80, 000',
    },
    {
      'title': 'United Hotel',
      'place': 'Warda, Yaoundé',
      'distance': 2,
      'review': 37,
      'picture': 'images/hotel_2.png',
      'price': '80, 000',
    },
    {
      'title': 'Palce 26',
      'place': 'Warda, Yaoundé',
      'distance': 2,
      'review': 37,
      'picture': 'images/hotel_3.png',
      'price': '80, 000',
    },
    {
      'title': 'Palace 23',
      'place': 'Blv. 20 Mai, Yaoundé',
      'distance': 2,
      'review': 87,
      'picture': 'images/hotel_4.png',
      'price': '150, 000',
    }
    
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('550 Hotels',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  ),
                  
                  Row(
                    children: [
                      Text('Filtres',
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.filter_list_outlined,
                          color: d_green,
                          size: 25,
                          ),
                          onPressed: null,
                        )
                    ],
                  )
              ],
            ),
          ),
          Column(
            children: 
            hotelList.map((hotel){
              return HotelCard(hotel);}).toList(),
          )
        ],
      ),
    );
  }
}


class HotelCard extends StatelessWidget {
  final Map hotelData;
  HotelCard(this.hotelData);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3),
          )
        ]
      ),


//======================  Image  ==================
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              image: DecorationImage(image: AssetImage(hotelData['picture'],
              ),
              fit: BoxFit.cover,
              ),
            ),
            
            child: Stack( children: [Positioned(
              top: 5,
              right: -15,
              child: MaterialButton(
                color: Colors.white,
                shape: CircleBorder(),
              onPressed: (){},
              child: Icon(
              Icons.favorite_outline_rounded,
              color: d_green,
              size: 20,
            ),))],

            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(hotelData['title'],
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                ),
                Text('XFA ' + hotelData['price'],
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(hotelData['place'],
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w400,
                ),
                ),

              Row(
                children: [
                  Icon(
                    Icons.place,
                    color: d_green,
                    size: 14.0,
                  ),
                  Text(hotelData['distance'].toString() + ' km de la ville',
                  style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w400,
                ),
                ),
                ],
              ),
              Text('par nuit',
            style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w400,
                ),),
              
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                    Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                    Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                    Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                    Icon(
                    Icons.star_border,
                    color: d_green,
                    size: 14,
                  ),
                  ],
                ),


              SizedBox(
                width: 95,
              ),



                Text(hotelData['review'].toString() + ' reviews',
                style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w400,
                ),
                )
              ],
            ),
          ),  
        ],
      ),
);
  }
}