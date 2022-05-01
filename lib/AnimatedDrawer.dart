import 'package:flutter/material.dart';
import 'Drawer_Items.dart';
class AnimatedDrawer extends StatefulWidget {
  const AnimatedDrawer({Key? key}) : super(key: key);

  @override
  State<AnimatedDrawer> createState() => _AnimatedDrawerState();
}

class _AnimatedDrawerState extends State<AnimatedDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //upper area
            Row(children: [
              //profile area
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.red,
                        child: Text(
                          "M",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12),
                          child: Text(
                            "Mohamed Magdy",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            "01221805147",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //--------------------------------------//
              //language and country area

              //-------------------------------------//
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings))
            ],),
            //----------------------//
            //Language and country area
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,
                        vertical: 4),
                    child: Row(
                      children: [
                        Text("Language /لغة ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                                border:Border.all(color:Colors.red)
                            ),
                            child: Center(child: Text("Ar",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4),
                    child: Row(

                      children: [
                        Text("Country",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 8),
                          child: Container(
                              height: 18,
                              width: 30,
                              child: Image(image: AssetImage("assets/images/egypt.png"))),
                        ),
                        Text("EGY",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),)


                      ],
                    ),
                  )
                ],
              ),
            ),
            //----------------------//
            Divider(height: 7,color: Colors.grey,indent: 20,endIndent: 230,),
           Column(
             //build the drawer here :)
           )
          ],
        ),
      ),
    );
  }
}
