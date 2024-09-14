import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.cyan.shade100,
        ),
        home: CalciHome());
  }
}

class CalciHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalciHomeState();
  }
}

class CalciHomeState extends State<CalciHome> {
  var Input01 = TextEditingController();
  var Input02 = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade50,
        title: Text(
          "CALCULATOR",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 790,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xfffbc2eb), Color(0xffa6c1ee)])),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenl,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: Input01,
                  decoration: InputDecoration(
                    hintText: "Enter First Number",
                    hintStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    fillColor: Colors.deepOrange.shade100,
                    filled: true,
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 4, color: Colors.green.shade200)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 4, color: Colors.lightBlueAccent)),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FaIcon(
                        FontAwesomeIcons.firstOrder,
                        size: 40,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: Input02,
                  decoration: InputDecoration(
                    hintText: "Enter Second Number",
                    hintStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    fillColor: Colors.amber.shade100,
                    filled: true,
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 4, color: Colors.deepPurple.shade300)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 4, color: Colors.lightBlueAccent)),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FaIcon(
                        FontAwesomeIcons.firstOrder,
                        size: 40,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        "OUTPUT: $result",
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green.shade200,
                          radius: 35,
                          child: TextButton(
                            onPressed: () {
                              var no1 = int.parse(Input01.text.toString());
                              var no2 = int.parse(Input02.text.toString());
                              var sum = no1 + no2;
                              result = "$sum";

                              //result = "The sum of $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: Text(
                              "+",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.black),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.indigo.shade300,
                          radius: 35,
                          child: TextButton(
                            onPressed: () {
                              var no1 = int.parse(Input01.text.toString());
                              var no2 = int.parse(Input02.text.toString());
                              var diff = no1 - no2;
                              result = "$diff";
                              //result = "The sum of $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: Text(
                              "-",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.black),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blueAccent.shade100,
                          radius: 35,
                          child: TextButton(
                            onPressed: () {
                              var no1 = int.parse(Input01.text.toString());
                              var no2 = int.parse(Input02.text.toString());
                              var Multi = no1 * no2;
                              result =
                                  "${Multi.toStringAsFixed(2)}"; //Limit the value after decimal upto 2

                              //result = "The sum of $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: Text(
                              "*",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blueGrey.shade300,
                            radius: 30,
                            child: TextButton(
                              onPressed: () {
                                var no1 = int.parse(Input01.text.toString());
                                var no2 = int.parse(Input02.text.toString());
                                var div = no1 / no2;
                                result = "${div.toStringAsFixed(4)}";
                                //result = "The sum of $no1 and $no2 is $sum";
                                setState(() {});
                              },
                              child: Text(
                                "/",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.black),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.pink.shade100,
                            radius: 35,
                            child: TextButton(
                              onPressed: () {
                                var no1 = int.parse(Input01.text.toString());
                                var no2 = int.parse(Input02.text.toString());
                                var Avg = (no1 + no2) / 2;
                                result = "$Avg";

                                //result = "The sum of $no1 and $no2 is $sum";
                                setState(() {});
                              },
                              child: Text(
                                "A",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.black),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.teal.shade200,
                            radius: 35,
                            child: TextButton(
                              onPressed: () {
                                var no1 = int.parse(Input01.text.toString());
                                var no2 = int.parse(Input02.text.toString());
                                var mod = no1 % no2;
                                result = "$mod";
                                //result = "The sum of $no1 and $no2 is $sum";
                                setState(() {});
                              },
                              child: Center(
                                child: Text(
                                  "%",
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset("assets/image.png",width: 300,height: 220,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
