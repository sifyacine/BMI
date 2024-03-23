import 'package:bmi/colors.dart';
import 'package:bmi/results.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
int age = 18;

double hieght = 150;

double wieght = 50;

bool ismale = true;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI calculator",
          style: TextStyle(color: kBlueColor),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        ismale = true;
                      }),
                        child: Container(
                          decoration: BoxDecoration(
                            color: kBlueColor,
                            border: Border.all(
                              color: kRedColor,
                              width: ismale ? 4 : 0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 70,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        ismale = false;
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kBlueColor,
                          border: Border.all(
                            color: kRedColor,
                            width: ismale ? 0 : 4,
                          ),
                          borderRadius: BorderRadius.circular(12),

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 70,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(

                        color: kBlueColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Height',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            "${hieght.toStringAsFixed(1)}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                            ),
                          ),
                          Slider(
                            activeColor: kRedColor,
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
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: kBlueColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "weight",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                            ),
                            Text(
                              "$wieght",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: kRedColor,
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        wieght = wieght + 0.5;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: kRedColor,
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        wieght = wieght - 0.5;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: kBlueColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "age",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                            ),
                            Text(
                              "$age",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: kRedColor,
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: kRedColor,
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
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
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kRedColor,
                    ),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder:
                                  (context) => ResultsPage(
                                    height: hieght,
                                    weight: wieght,
                                    isMale: ismale,
                                  ),
                          ),
                      );
                    },
                    child: Text("calculate".toUpperCase()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}