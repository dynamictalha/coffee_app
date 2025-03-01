import 'package:chayeshop/pages/SingleItem_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemWidget extends StatelessWidget {
  final List<String> img = [
    'Black Coffee',
    'Cold Coffee',
    'Espresso',
    'Latte',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 150 / 210,
      
  
        children:[
          for(int i = 0 ; i < img.length;i++)
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF212325),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  // Handle tap event
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SingleItemScreen(img: img[i],)));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("images/${img[i]}.png",
                  width: 120,
                  height: 120,
                  fit: BoxFit.contain,
                  ),
                  
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8 ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        img[i],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "Best Coffee",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white60
                        ),
                      )
                    ],
                  ),
                )

                ),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Rs. 200",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500

                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xfff26716),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          CupertinoIcons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
        ]
      
    );
  }
}
