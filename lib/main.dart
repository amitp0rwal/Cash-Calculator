import 'package:cash_calculator/Spalash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cash Calculator',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  var FHcontroller = TextEditingController();
  var THcontroller = TextEditingController();
  var OHcontroller = TextEditingController();
  var FYcontroller = TextEditingController();
  var TYcontroller = TextEditingController();
  var TNcontroller = TextEditingController();
  var FEcontroller = TextEditingController();
  var TWOcontroller = TextEditingController();
  var ONEcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var resultFH = FHcontroller.text.toString();
    var result500 = int.tryParse(resultFH) ?? 0;
    dynamic resultfh = (result500 * 500);
    dynamic noValue = 'Error';
    if(resultfh>=100000){
      resultfh = noValue;
    }

    var resultTH = THcontroller.text.toString();
    var result200 = int.tryParse(resultTH) ?? 0;
    dynamic resultth = (result200 * 200);
    dynamic noValue2 = 'Error';
    if(resultth>=100000){
      resultth = noValue2;
    }

    var resultOH = OHcontroller.text.toString();
    var result100 = int.tryParse(resultOH) ?? 0;
    dynamic resultoh = (result100 * 100);
    dynamic noValue3 = 'Error';
    if(resultoh>=100000){
      resultoh = noValue3;
    }

    var resultFY = FYcontroller.text.toString();
    var result50 = int.tryParse(resultFY) ?? 0;
    dynamic resultfy = (result50 * 50);
    dynamic noValue4 = 'Error';
    if(resultfy>=100000){
      resultfy = noValue4;
    }

    var resultTY = TYcontroller.text.toString();
    var result20 = int.tryParse(resultTY) ?? 0;
    dynamic resultty = (result20 * 20);
    dynamic noValue5 = 'Error';
    if(resultty>=100000){
      resultty = noValue5;
    }

    var resultTN = TNcontroller.text.toString();
    var result10 = int.tryParse(resultTN) ?? 0;
    dynamic resulttn = (result10 * 10);
    dynamic noValue6 = 'Error';
    if(resulttn>=100000){
      resulttn = noValue6;
    }

    var resultFE = FEcontroller.text.toString();
    var result5 = int.tryParse(resultFE) ?? 0;
    dynamic resultfe = (result5 *5);
    dynamic noValue7 = 'Error';
    if(resultfe>=100000){
      resultfe = noValue7;
    }

    var resultTWO = TWOcontroller.text.toString();
    var result2 = int.tryParse(resultTWO) ?? 0;
    dynamic resulttwo = (result2 * 2);
    dynamic noValue8 = 'Error';
    if(resulttwo>=100000){
      resulttwo = noValue8;
    }

    var resultONE = ONEcontroller.text.toString();
    var result1 = int.tryParse(resultONE) ?? 0;
    dynamic resultone = (result1 * 1);
    dynamic noValue9 = 'Error';
    if(resultone>=100000){
      resultone = noValue9;
    }

    dynamic total = '';
    dynamic totalrupees = 0;
    if(resultfh != noValue &&
        resultth != noValue2 &&
        resultoh != noValue3 &&
        resultfy != noValue4 &&
        resultty != noValue5 &&
        resulttn != noValue6 &&
        resultfe != noValue7 &&
        resulttwo != noValue8 &&
        resultone != noValue9){
      totalrupees = resultfh + resultth + resultoh + resultfy + resultty + resulttn + resultfe + resulttwo + resultone;
      total = '₹$totalrupees';
    }
    else{
      total = 'Limit Exceed';
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Cash Calculator', style: TextStyle(fontSize: 25, fontWeight: FontWeight(450)),)),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blue.shade200,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 4),
                    child: Container(
                      height: 60,
                      color: Color(0xFF8A8A8A),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              width: 82,
                              child: Image.asset('assets/images/500.png',),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('×', style: TextStyle(fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                width: 83,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      )
                                  ),
                                  keyboardType: TextInputType.number,
                                  controller: FHcontroller,
                                  onChanged: (value){
                                    setState(() {

                                    });
                                  },
                                )
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('=', style: TextStyle(
                                fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 8),
                            child: Container(
                              width: 77,
                              child: Text('$resultfh', style: TextStyle(fontSize: 25),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Container(
                      height: 60,
                      color: Color(0xFFFFAA1D),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              width: 82,
                              child: Image.asset('assets/images/200.png',),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('×', style: TextStyle(fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                width: 83,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      )
                                  ),
                                  keyboardType: TextInputType.number,
                                  controller: THcontroller,
                                  onChanged: (value){
                                    setState(() {

                                    });
                                  },
                                )
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('=', style: TextStyle(
                                fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 8),
                            child: Container(
                              width: 77,
                              child: Text('$resultth', style: TextStyle(fontSize: 25),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Container(
                      height: 60,
                      color: Color(0xFF967BB6),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              width: 82,
                              child: Image.asset('assets/images/100.png',),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('×', style: TextStyle(fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                width: 83,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      )
                                  ),
                                  keyboardType: TextInputType.number,
                                  controller: OHcontroller,
                                  onChanged: (value){
                                    setState(() {
                                    });
                                  },
                                )
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('=', style: TextStyle(
                                fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 8),
                            child: Container(
                              width: 77,
                              child: Text('$resultoh', style: TextStyle(fontSize: 25),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Container(
                      height: 60,
                      color: Color(0xFF7CE4F3),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              width: 82,
                              child: Image.asset('assets/images/50.png',),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('×', style: TextStyle(fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                width: 83,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      )
                                  ),
                                  keyboardType: TextInputType.number,
                                  controller: FYcontroller,
                                  onChanged: (value){
                                    setState(() {
                                    });
                                  },
                                )
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('=', style: TextStyle(
                                fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 8),
                            child: Container(
                              width: 77,
                              child: Text('$resultfy', style: TextStyle(fontSize: 25),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Container(
                      height: 60,
                      color: Color(0xFFD4DC6C),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              width: 82,
                              child: Image.asset('assets/images/20.png',),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('×', style: TextStyle(fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                width: 83,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      )
                                  ),
                                  keyboardType: TextInputType.number,
                                  controller: TYcontroller,
                                  onChanged: (value){
                                    setState(() {
                                    });
                                  },
                                )
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('=', style: TextStyle(
                                fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 8),
                            child: Container(
                              width: 77,
                              child: Text('$resultty', style: TextStyle(fontSize: 25),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Container(
                      height: 60,
                      color: Color(0xFFC39C67),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              width: 82,
                              child: Image.asset('assets/images/10.png',),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('×', style: TextStyle(fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                width: 83,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      )
                                  ),
                                  keyboardType: TextInputType.number,
                                  controller: TNcontroller,
                                  onChanged: (value){
                                    setState(() {
                                    });
                                  },
                                )
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('=', style: TextStyle(
                                fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 8),
                            child: Container(
                              width: 77,
                              child: Text('$resulttn', style: TextStyle(fontSize: 25),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Container(
                      height: 60,
                      color: Color(0xFF8CA376),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              width: 82,
                              child: Image.asset('assets/images/5.png',),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('×', style: TextStyle(fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                width: 83,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      )
                                  ),
                                  keyboardType: TextInputType.number,
                                  controller: FEcontroller,
                                  onChanged: (value){
                                    setState(() {
                                    });
                                  },
                                )
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('=', style: TextStyle(
                                fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 8),
                            child: Container(
                              width: 77,
                              child: Text('$resultfe', style: TextStyle(fontSize: 25),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Container(
                      height: 60,
                      color: Color(0xFFDF8C4E),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              width: 82,
                              child: Image.asset('assets/images/2.png',),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('×', style: TextStyle(fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                width: 83,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      )
                                  ),
                                  keyboardType: TextInputType.number,
                                  controller: TWOcontroller,
                                  onChanged: (value){
                                    setState(() {
                                    });
                                  },
                                )
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('=', style: TextStyle(
                                fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 8),
                            child: Container(
                              width: 77,
                              child: Text('$resulttwo', style: TextStyle(fontSize: 25),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Container(
                      height: 60,
                      color: Color(0xFFE5B2B8),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              width: 82,
                              child: Image.asset('assets/images/1.png',),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('×', style: TextStyle(fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                                width: 83,
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8)
                                      )
                                  ),
                                  keyboardType: TextInputType.number,
                                  controller: ONEcontroller,
                                  onChanged: (value){
                                    setState(() {
                                    });
                                  },
                                )
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            child: Center(child: Text('=', style: TextStyle(fontSize: 25),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 8),
                            child: Container(
                              width: 77,
                              child: Text('$resultone', style: TextStyle(fontSize: 25),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: double.infinity,
                        height: 80,
                        color: Colors.green,
                        child: Center(child: Text('Total Amount = $total', style: TextStyle(fontSize: 25),))
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}