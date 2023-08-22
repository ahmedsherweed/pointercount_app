import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int TeamBPoint = 0;

  int TeamAPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("pointscounter"),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$TeamAPoint",
                        style: TextStyle(
                            fontSize: 140, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red, minimumSize: Size(80, 30)),
                          onPressed: () {
                            setState(() {
                              TeamAPoint++;
                            });
                          },
                          child: Text(
                            "Add 1 point ",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 19,
                                color: Colors.black),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red, minimumSize: Size(80, 30)),
                          onPressed: () {
                            setState(() {
                              TeamAPoint += 2;
                            });
                          },
                          child: Text(
                            "Add 2 point ",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 19,
                                color: Colors.black),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red, minimumSize: Size(80, 30)),
                          onPressed: () {
                            setState(() {
                              TeamAPoint += 3;
                            });
                          },
                          child: Text(
                            "Add 3 point ",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 19,
                                color: Colors.black),
                          ))
                    ],
                  ),
                  Container(
                    height: 330,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$TeamBPoint",
                        style: TextStyle(
                            fontSize: 140, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red, minimumSize: Size(80, 30)),
                          onPressed: () {
                            setState(() {
                              TeamBPoint += 1;
                            });
                          },
                          child: Text(
                            "Add 1 point ",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 19,
                                color: Colors.black),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red, minimumSize: Size(80, 30)),
                          onPressed: () {
                            setState(() {
                              TeamBPoint += 2;
                            });
                          },
                          child: Text(
                            "Add 2 point ",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 19,
                                color: Colors.black),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red, minimumSize: Size(80, 30)),
                          onPressed: () {
                            setState(() {
                              TeamBPoint += 3;
                            });
                          },
                          child: Text(
                            "Add 3 point ",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 19,
                                color: Colors.black),
                          ))
                    ],
                  ),
                ],
              ),
              Spacer(flex: 1),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red, minimumSize: Size(80, 30)),
                  onPressed: () {
                    setState(() {
                      TeamAPoint = 0;
                      TeamBPoint = 0;
                    });
                  },
                  child: Text(
                    "reset ",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 19,
                        color: Colors.black),
                  )),
              Spacer(flex: 1)
            ],
          ),
        ),
      ),
    );
  }
}
