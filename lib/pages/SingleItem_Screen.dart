import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  final String img;
  const SingleItemScreen({super.key,
  required this.img
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 30,bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  ),
                SizedBox(height: 5,),

                Center(
                   child: Image.asset("images/$img.png",
                   width: MediaQuery.of(context).size.width / 1.5,
                   ),
                  
                ),

                SizedBox(height: 25,),

                Padding(
                  padding: EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Best Coffee",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4), 
                          letterSpacing: 3
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        img,
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 110,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.2),
                                ),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                SizedBox(width: 15,),
                                Text("2",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                ),
                                ),
                                SizedBox(width: 15,),
                                 Icon(
                                    CupertinoIcons.minus,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            Text("Rs.200",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("You can't buy happiness, but you can buy coffee, and that's pretty close.",
                      style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.w500,
                         color: Colors.white.withOpacity(0.4)
                      ),),

                      SizedBox(height: 30,),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                              decoration: BoxDecoration(
                                color: Color(0xFF32363A),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Text("Add to Card",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1
                              ),),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Color(0xfff26716),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Icon(Icons.favorite_outline,
                              color: Colors.white,
                              )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  ),
                  


              ],
            ),
            )
          ),
      ),
    );
  }
}