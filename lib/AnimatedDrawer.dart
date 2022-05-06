import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedDrawer extends StatefulWidget {
  const AnimatedDrawer({Key? key}) : super(key: key);

  @override
  State<AnimatedDrawer> createState() => _AnimatedDrawerState();
}

class _AnimatedDrawerState extends State<AnimatedDrawer> {
  String Version = "0.1";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //upper area
            Row(
              children: [
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
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
                IconButton(onPressed: () {}, icon: Icon(Icons.settings))
              ],
            ),
            //----------------------//
            //Language and country area
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: Row(
                      children: [
                        Text(
                          "Language /لغة ",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red)),
                            child: Center(
                                child: Text(
                              "Ar",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: Row(
                      children: [
                        Text(
                          "Country",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 8),
                          child: Container(
                              height: 18,
                              width: 30,
                              child: Image(
                                  image:
                                      AssetImage("assets/images/egypt.png"))),
                        ),
                        Text(
                          "EGY",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            //----------------------//
            Divider(
              height: 7,
              color: Colors.grey,
              indent: 20,
              endIndent: 230,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    BuildMenuItem(
                        Title: "Track order",
                        icon: FontAwesomeIcons.mapLocationDot,
                        function: () {}),
                    BuildMenuItem(
                        Title: "Track order",
                        icon: FontAwesomeIcons.bars,
                        function: () {}),
                    BuildMenuItem(
                        Title: "Track order",
                        icon: FontAwesomeIcons.circleDollarToSlot,
                        function: () {}),
                    BuildMenuItem(
                        Title: "Track order",
                        icon: FontAwesomeIcons.utensils,
                        function: () {}),
                    Divider(
                      height: 7,
                      color: Colors.black,
                      indent: 20,
                      endIndent: 230,
                    ),
                    BuildMenuItemNoIcon(Title: "Feedback", function: () {}),
                    BuildMenuItemNoIcon(Title: "FAQ", function: () {}),
                    BuildMenuItemNoIcon(
                        Title: "Terms & Conditions", function: () {}),
                    BuildMenuItemNoIcon(
                        Title: "Nutrition Information", function: () {}),
                  ],
                ),
              ),
            ),
            Container(
              height: 75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(4, 4),
                        color: Colors.grey),
                    BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(-2, -2),
                        color: Colors.grey.shade300)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      child: IconButton(
                        onPressed: (){},
                        icon:Icon(FontAwesomeIcons.phone),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Text("CALL SUPPORT",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Spacer(),
                    Image(image: AssetImage("assets/images/delivery.png")),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "$Version",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget BuildMenuItem(
      {required String Title,
      required IconData icon,
      required Function() function}) {
    return ListTile(
      leading: Icon(icon, size: 25),
      iconColor: Colors.black,
      title: Text("$Title",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      onTap: function,
    );
  }

  Widget BuildMenuItemNoIcon(
      {required String Title, required Function() function}) {
    return ListTile(
      title: Text("$Title",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      onTap: function,
    );
  }
}
