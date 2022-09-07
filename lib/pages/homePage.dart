import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int curentindex = 0;

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    print("height :$sh");
    print("width :$sw");
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios_new_outlined)),
          title: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  splashColor: Colors.cyan,
                  child: Container(
                    height: 37,
                    decoration: BoxDecoration(
                        color: Color(0xffF1F1F1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.search, color: Color(0xffB6B6B6)),
                      ),
                      Text(
                        "Search",
                        style: TextStyle(color: Color(0xffB6B6B6)),
                      )
                    ]),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_sharp,
                    color: Color(0xff8E8E93),
                  )),
            ),
          ],
        ),
        body: Column(children: [
          ///this is our header
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "Assets/images/material.jpg",
                          fit: BoxFit.cover,
                        ))),
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "mainAxisAlignment",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "mainAxisAlignment  in lagos",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white70,
                              child: Icon(Icons.arrow_forward_ios, size: 15),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
          //  ////////////////////////////
          //  lets create the rows and column to form the button body

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // lets create a column to house   circle background and our text
              Column(
                children: [
                  Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffF8CE3F),
                                Color(0xffFC9306)
                              ]).createShader(bounds);
                        },
                        child: CircleAvatar(
                          //CircleAvatar is uswed to create a circular widget  mostly used for profile pictures
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.add_alarm,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Text(
                    "Alarm",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffF8CE3F),
                                Color(0xffFC9306)
                              ]).createShader(bounds);
                        },
                        child: CircleAvatar(
                          //CircleAvatar is uswed to create a circular widget  mostly used for profile pictures
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.add_alarm,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Text(
                    "Alarm",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffF8CE3F),
                                Color(0xffFC9306)
                              ]).createShader(bounds);
                        },
                        child: CircleAvatar(
                          //CircleAvatar is uswed to create a circular widget  mostly used for profile pictures
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.add_alarm,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Text(
                    "Alarm",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffF8CE3F),
                                Color(0xffFC9306)
                              ]).createShader(bounds);
                        },
                        child: CircleAvatar(
                          //CircleAvatar is uswed to create a circular widget  mostly used for profile pictures
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.add_alarm,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Text(
                    "Alarm",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: (2 / 100) * sh,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // lets create a column to house   circle background and our text
              Column(
                children: [
                  Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffF8CE3F),
                                Color(0xffFC9306)
                              ]).createShader(bounds);
                        },
                        child: CircleAvatar(
                          //CircleAvatar is uswed to create a circular widget  mostly used for profile pictures
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.add_alarm,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Text(
                    "Alarm",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffF8CE3F),
                                Color(0xffFC9306)
                              ]).createShader(bounds);
                        },
                        child: CircleAvatar(
                          //CircleAvatar is uswed to create a circular widget  mostly used for profile pictures
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.add_alarm,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Text(
                    "Alarm",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffF8CE3F),
                                Color(0xffFC9306)
                              ]).createShader(bounds);
                        },
                        child: CircleAvatar(
                          //CircleAvatar is uswed to create a circular widget  mostly used for profile pictures
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.add_alarm,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Text(
                    "Alarm",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffF8CE3F),
                                Color(0xffFC9306)
                              ]).createShader(bounds);
                        },
                        child: CircleAvatar(
                          //CircleAvatar is uswed to create a circular widget  mostly used for profile pictures
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.add_alarm,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Text(
                    "Alarm",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          //  -----------lets create a tab and wrap it in a container
          Container(
            height: 200,
            color: Color(0xffF5F5F5),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TabBar(tabs: [
                        Tab(
                          child: Text(
                            "home",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Tab(
                            child: Text("about",
                                style: TextStyle(color: Colors.black))),
                        Tab(
                            child: Text(
                          "contact",
                          style: TextStyle(color: Colors.black),
                        )),
                        Tab(
                          child: Text("contact",
                              style: TextStyle(color: Colors.black)),
                        )
                      ]),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Row(
                        children: [
                          Expanded(flex: 4,
                            child: Container(
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "mainAxisAlignment",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Text(
                                      "mainAxisAlignment  in lagos",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.7),
                                          fontSize: 15),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.white70,
                                        child: Icon(Icons.arrow_forward_ios,
                                            size: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffF8CE3F),
                                        Color(0xffFC9306)
                                      ])),
                            ),
                          ),
                          Expanded(flex: 3,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(margin: EdgeInsets.all(8),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            "mainAxisAlignment",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            "mainAxisAlignment  in lagos",
                                            style: TextStyle(
                                                color:
                                                    Colors.white.withOpacity(0.7),
                                                fontSize: 15),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 30.0),
                                            child: CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Colors.white70,
                                              child: Icon(Icons.arrow_forward_ios,
                                                  size: 15),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xffF8CE3F),
                                              Color(0xffFC9306)
                                            ])),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(8,0,8,8),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            "mainAxisAlignment",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "mainAxisAlignment  in lagos",
                                            style: TextStyle(
                                                color:
                                                    Colors.white.withOpacity(0.7),
                                                fontSize: 10),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 30.0),
                                            child: CircleAvatar(
                                              radius: 10,
                                              backgroundColor: Colors.white70,
                                              child: Icon(Icons.arrow_forward_ios,
                                                  size: 15),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xffF8CE3F),
                                              Color(0xffFC9306)
                                            ])),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text("ada"),
                      Text("obi"),
                      Text("monkij")
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
