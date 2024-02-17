import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const calculator());
}

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff122048),
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Color(0xff1A235C),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff1A235C),
                        Color(0xff1A235C),
                        Color(0xff122048)
                      ])),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    child: AppBar(
                      leading: Icon(
                        Icons.widgets_outlined,
                        color: Colors.white70,
                      ),
                      backgroundColor: Colors.transparent,
                      title: Text(
                        "EMI Calculator",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      centerTitle: true,
                    ),
                  ),
                  Text(
                    "Your Loan EMI is",
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "\u20B9 ${Emi.toStringAsFixed(2)}",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.5)),
                    TextSpan(
                      text: "/Month",
                      style: TextStyle(color: Colors.white70, fontSize: 10),
                    )
                  ]))
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 155,
                          width: 410,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 30,
                                left: 130,
                                child: Text(
                                  "Loan Amount",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Loan Amount",
                                  style: TextStyle(
                                      color: Color(0xffE6E7E9),
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                top: 65,
                                left: 170,
                                child: Text(
                                  "${x.toStringAsFixed(0)}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                top: 85,
                                left: 60,
                                child: Container(
                                  width: 280,
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      trackHeight: 2,
                                      trackShape: RectangularSliderTrackShape(),
                                      thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 7),
                                    ),
                                    child: Slider(
                                      min: 50000,
                                      max: 1000000,
                                      thumbColor: Color(0xff122048),
                                      divisions: 190,
                                      value: x,
                                      onChanged: (value) {
                                        setState(() {
                                          x = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 200,
                          width: 410,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 30,
                                left: 130,
                                child: Text(
                                  "Interest Rate",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                top: 50,
                                left: 80,
                                child: Text(
                                  "Interest Rate",
                                  style: TextStyle(
                                      color: Color(0xefe6e7e9),
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                top: 65,
                                left: 190,
                                child: Text(
                                  "${rate.toStringAsFixed(0) + '%'}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                top: 90,
                                left: 60,
                                child: Container(
                                  width: 280,
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      trackHeight: 2,
                                      trackShape: RectangularSliderTrackShape(),
                                      thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 7),
                                    ),
                                    child: Slider(
                                      min: 1,
                                      max: 100,
                                      thumbColor: Color(0xff122048),
                                      divisions: 100,
                                      value: rate,
                                      onChanged: (value) {
                                        setState(() {
                                          rate = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 200,
                          width: 410,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 30,
                                left: 130,
                                child: Text(
                                  "Loan Tenure",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                top: 50,
                                left: 80,
                                child: Text(
                                  "Loan Tenure",
                                  style: TextStyle(
                                      color: Color(0xffe5e6e3),
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                top: 65,
                                left: 190,
                                child: Text(
                                  "${tenure.toStringAsFixed(0)}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Positioned(
                                top: 90,
                                left: 60,
                                child: Container(
                                  width: 280,
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      trackHeight: 2,
                                      trackShape: RectangularSliderTrackShape(),
                                      thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 7),
                                    ),
                                    child: Slider(
                                      min: 6,
                                      max: 60,
                                      thumbColor: Color(0xff122048),
                                      divisions: 9,
                                      value: tenure,
                                      onChanged: (value) {
                                        setState(() {
                                          tenure = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Emi = calculate(x, rate, tenure);
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 250,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Color(0xffE8EBFF)),
                        child: Text(
                          "Calculate",
                          style: TextStyle(
                              color: Color(0xff283268),
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                      ),
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
}

double x = 50000;
double rate = 1;
double tenure = 6;
double Emi = 0;

double calculate(double price, double rate, double tenure) {
  rate = rate / 12 / 100;
  var temppow = pow((1 + rate), tenure);
  var temppow2 = pow((1 + rate), tenure);
  double emi = price * rate * temppow / (temppow2 - 1);

  return emi;
}
