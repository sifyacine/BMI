import 'package:bmi/results.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
int age = 0;

double hieght = 0;

double wieght = 0;

bool ismale = true;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI",
        ),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  ismale = true;
                }),
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black, width: 5),
                  ),
                  width: 180,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.male,
                        color: Colors.white,
                        size: 50,
                      ),
                      Text('Male')
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () => setState(() {
                  ismale = false;
                }),
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black, width: 5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.female,
                        color: Colors.white,
                        size: 50,
                      ),
                      Text('Female')
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellowAccent,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Height"),
                      Text("$hieght"),
                      Slider(
                        value: hieght,
                        min: 0,
                        max: 200,
                        onChanged: (value){
                          setState(() {
                            hieght = value;
                          });
                        },
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.green
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("weight"),
                      Text("$wieght"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  wieght++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  wieght++;
                                });
                              },
                              icon: Icon(Icons.remove),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("age"),
                      Text("$age"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icon(Icons.remove),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(height: hieght, weight: wieght)));
                  },
                  child: const Text("calculate"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}