import 'package:chayeshop/pages/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top:100 ,bottom: 40 ,),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
            opacity: 0.6,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Coffee Shop",
            style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 50
            ),),
            Column(
              children: [
                Text(
                  "Feeling Low? Take a Sip of Coffee",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1
                  ),
                ),
                SizedBox(height: 80,),
                InkWell(
                  splashColor: Colors.black,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Home_Screen()));
                  },
                  child: Ink(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal:30,vertical:15 ),
                      decoration: BoxDecoration(
                        color: Color(0xffa64521),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Get Start",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),),
                    ),
                  ),
                )
              ],

            )

          ],
        ),
      ),

    );
  }
}