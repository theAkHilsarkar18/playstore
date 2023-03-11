import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Basescreen extends StatefulWidget {
  const Basescreen({Key? key}) : super(key: key);

  @override
  State<Basescreen> createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                height: 55,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.5, 0.5),
                        blurRadius: 0.5,
                        spreadRadius: 0.5),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    ),
                    Text("Search for apps & games",
                        style: GoogleFonts.aBeeZee(color: Colors.grey)),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mic_none),
                    ),
                  ],
                ),
              ),
             Container(
               height: 50,
               width: double.infinity,
               decoration: BoxDecoration(
                 color: Colors.white,
                 border: Border(bottom: BorderSide(color: Colors.black12),),
               ),
               child: TabBar(
                 indicatorColor: Colors.green,
                 tabs: [
                   Tab(child: Text("For you",style: GoogleFonts.lato(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w500,),),),
                   Tab(child: Text("Top chart",style: GoogleFonts.lato(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w500,),),),
                   Tab(child: Text("New",style: GoogleFonts.lato(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w500,),),),
                   Tab(child: Text("Event",style: GoogleFonts.lato(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w500,),),),
                 ],
               ),
             ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.sports_esports,color: Colors.black),label: "Games",backgroundColor: Colors.white),
              BottomNavigationBarItem(icon: Icon(Icons.widgets_outlined,color: Colors.black),label: "Games",backgroundColor: Colors.white),
              BottomNavigationBarItem(icon: Icon(Icons.theaters,color: Colors.black),label: "Games",backgroundColor: Colors.white),
              BottomNavigationBarItem(icon: Icon(Icons.book,color: Colors.black),label: "Games",backgroundColor: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
