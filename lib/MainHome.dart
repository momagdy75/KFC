import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  bool isOpen = false;
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  Color red=Colors.red;
  Color grey300=Colors.grey.shade300;
  Color red300=Colors.red.shade300;
  Color boxonecolor=Colors.grey.shade300;
  Color boxtwocolor=Colors.grey.shade300;
  Color boxthreecolor=Colors.grey.shade300;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius:
            isOpen ? BorderRadius.circular(30) : BorderRadius.circular(0),
        color: isOpen ? Colors.grey.shade300 : Colors.grey.shade50,

      ),
      child: Column(
        children: [
          //AppBar//
          Container(

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: isOpen
                  ? BorderRadius.only(topLeft: Radius.circular(30))
                  : BorderRadius.circular(0),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (isOpen == false) {
                                xOffset = 190;
                                yOffset = 150;
                                scaleFactor = 0.70;
                                isOpen = true;
                              } else if (isOpen == true) {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isOpen = false;
                              }
                            });
                          },
                          icon: isOpen
                              ? Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                )
                              : Icon(
                                  Icons.menu,
                                  size: 30,
                                )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "SELECT LOCATION",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                  width: 92,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.lightBlue,
                                          ),
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 2.0),
                                                child: Text(
                                                  "SELECT",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Icon(
                                                Icons.keyboard_arrow_down_sharp,
                                                size: 15,
                                              )
                                            ],
                                          ))),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Get accurate pricing and menu listing",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                          Row(
                            children: [],
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(onTap:() {
                          setState(() {
                            if(boxonecolor==Colors.grey.shade300){
                              boxonecolor=red;
                            }
                            else{
                              boxonecolor=Colors.grey.shade300;
                            }
                          });
                        },
                            child: TypeOfOrder(image:"assets/images/delivery2.png",color: boxonecolor ,Title: "Delivery")),
                        GestureDetector(onTap:() {
                          setState(() {
                            if(boxtwocolor==Colors.grey.shade300){
                              boxtwocolor=red;
                            }
                            else{
                              boxtwocolor=Colors.grey.shade300;
                            }
                          });
                        },
                            child: TypeOfOrder(image:"assets/images/pickup.png",color: boxtwocolor ,Title: "Pick Up")),
                        GestureDetector(onTap:() {
                          setState(() {
                            if(boxthreecolor==Colors.grey.shade300){
                              boxthreecolor=red;
                            }
                            else{
                              boxthreecolor=Colors.grey.shade300;
                            }
                          });
                        },
                            child: TypeOfOrder(image:"assets/images/dinein.png",color: boxthreecolor ,Title: "Dine In")),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          //--------------------//
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("Exclusive Offers 🍟",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                    Divider(color: Colors.red,thickness: 2.5,indent: 0,endIndent: 330,),
                    //Exclusive Offers//
                    Container(
                      height: 200,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                print("first clicked");
                              },
                              child: Container(
                                width: 300,
                                height: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image(image: AssetImage("assets/images/offer6.jpg"),filterQuality: FilterQuality.high,fit: BoxFit.fill,),),
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: (){
                                print("2 clicked");
                              },
                              child: Container(
                                width: 300,
                                height: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image(image: AssetImage("assets/images/offer2.png"),filterQuality: FilterQuality.high,fit: BoxFit.fill,),),
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap:(){
                                print("3 clicked");
                              },
                              child: Container(
                                height: 200,
                                width: 300,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image(image: AssetImage("assets/images/offer3.jpg"),filterQuality: FilterQuality.high,fit: BoxFit.fill,),),
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: (){
                                print("4 clicked");
                              },
                              child: Container(
                                width: 300,
                                height: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image(image: AssetImage("assets/images/offer4.jpg"),filterQuality: FilterQuality.high,fit: BoxFit.fill,),),
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: (){
                                print("5 clicked");
                              },
                              child: Container(
                                width: 300,
                                height: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image(image: AssetImage("assets/images/offer5.jpg"),filterQuality: FilterQuality.high,fit: BoxFit.fill,),),
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: (){
                                print("6 clicked");
                              },
                              child: Container(
                                width: 300,
                                height: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image(image: AssetImage("assets/images/offer1.jpg"),filterQuality: FilterQuality.high,fit: BoxFit.fill,),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //--------------//
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Text("Explore Menu 🍗",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                        Spacer(),
                        Text("View All "),
                        Icon(FontAwesomeIcons.squareCaretRight,size: 17,color: Colors.black,),

                      ],
                    ),

              ]),
            ),
          )
        ],
      ),
    );
  }

  Widget TypeOfOrder({required String image,required Color color,required String Title}){
    return Column(
      children: [
        Container(
          height: 43,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: color,width: 3),
            boxShadow: [
              BoxShadow(
                  blurRadius: 8,
                  offset: const Offset(0.1, 0.1),
                  color: color == red ? Colors.transparent : grey300 ),
              BoxShadow(
                  blurRadius: 8,
                  offset: const Offset(-0.5, -0.1),
                  color:  color == red ? Colors.transparent : grey300)
            ],
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: Center(
              child: Image(
                image: AssetImage(image),
                height: 40,
                width: 40,
              )),
        ),
        SizedBox(height: 8,),
        Row(
          children: [Icon(FontAwesomeIcons.check,size: 10,color: Colors.red,),
            Text("$Title",style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ],
    );
  }
}
