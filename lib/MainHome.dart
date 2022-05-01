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
        color: Colors.white,
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
                          isOpen=false;
                        }
                      });
                    },
                    icon: isOpen ? Icon(Icons.arrow_back_ios,size: 20,) : Icon(Icons.menu)),
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
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: Text(
                                            "SELECT",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
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
                    Text(
                      "Get accurate pricing and menu listing",
                      style: TextStyle(color: Colors.grey.shade600),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
