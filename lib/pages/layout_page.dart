import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(colors: [
                  Color(0xffA1208D),
                  Color(0xffDD165F),
                  Color(0xffFF5722),
                  Color(0xffFD9700)
                ]).createShader(bounds);
              },
              child: Container(
                color: Colors.white,
              ))),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Material(
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: Tooltip(
                          message: "welcome to insta house",
                          child: Image.asset(
                            "Assets/images/insta.png",
                          ),
                        )),
                  ],
                ),
              ),
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              elevation: 10,
              shadowColor: Colors.red),
        ),
      ),
      bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xffA1208D),
                Color(0xffDD165F),
                Color(0xffFF5722),
                Color(0xffFD9700)
              ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                splashColor: Colors.cyan,
                onTap: () {
                  print("ada is a good girl");
                },
                child: Column(
                  children: [
                    Expanded(
                        child: Image.asset(
                          "Assets/images/insta.png",
                        )),
                    Expanded(
                        child: Text(
                          "Insta",
                          style: TextStyle(color: Color(0xffFAFAFA)),
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  print("naija");
                },
                child: Column(
                  children: [
                    Expanded(
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return LinearGradient(
                                colors: [
                              Color(0xffFAFAFA),
                              Color(0xff2196F3),
                                  Color(0xffFAFAFA),
                              Color(0xff2196F3)
                            ]).createShader(bounds);
                          },
                          child: Icon(
                            Icons.accessible,
                            color: Colors.white,
                          ),
                        )),
                    Expanded(
                        child: Text(
                          "Book",
                          style: TextStyle(color: Color(0xffFAFAFA)),
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Expanded(
                      child: Icon(
                        Icons.access_alarm,
                        color: Colors.white,
                      )),
                  Expanded(
                      child: Text(
                        "Alert",
                        style: TextStyle(color: Color(0xffFAFAFA)),
                      ))
                ],
              )
            ],
          )),
    );
  }
}
