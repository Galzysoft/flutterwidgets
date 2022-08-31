
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
            "i am isi aki",
            style: TextStyle(
                color: Colors.yellow, fontSize: 31.2, fontStyle: FontStyle.italic),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(30),
                    padding: EdgeInsets.all(30),
                    color: Colors.lightBlue,
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Row(
              children: [
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        boxShadow: [BoxShadow(color: Colors.black38,)],
                        gradient: RadialGradient(center: Alignment.bottomRight,
                            colors: [
                              Colors.white, Colors.pink, Colors.cyan]),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        // color: Colors.yellow,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.white,
                                  Colors.purple,
                                  Colors.red
                                ]),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(width: 5, color: Colors.red)

                          // image: DecorationImage(
                          //     image:
                          //     AssetImage("Assets/images/fineGirl.jpg"),
                          //     fit:BoxFit.fill)
                        ),
                        child: Center(
                            child: Text(
                              "ada",
                              style: TextStyle(color: Colors.white70),
                            )),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ],
            ),
          )
        ],
      ),
      // floatingActionButton:
      // ,
    );
  }
}
