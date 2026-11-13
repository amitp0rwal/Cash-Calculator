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
        home: MyHomePage()
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
  dynamic noValue = 'Error';

  @override
  Widget build(BuildContext context) {

    var resultFH = FHcontroller.text.toString();
    var result500 = int.tryParse(resultFH) ?? 0;
    dynamic resultfh = (result500 * 500);
    if(resultfh >= 1000000){
      resultfh = noValue;
    }

    var resultTH = THcontroller.text.toString();
    var result200 = int.tryParse(resultTH) ?? 0;
    dynamic resultth = (result200 * 200);
    if(resultth >= 1000000){
      resultth = noValue;
    }

    var resultOH = OHcontroller.text.toString();
    var result100 = int.tryParse(resultOH) ?? 0;
    dynamic resultoh = (result100 * 100);
    if(resultoh>=1000000){
      resultoh = noValue;
    }

    var resultFY = FYcontroller.text.toString();
    var result50 = int.tryParse(resultFY) ?? 0;
    dynamic resultfy = (result50 * 50);
    if(resultfy>=1000000){
      resultfy = noValue;
    }

    var resultTY = TYcontroller.text.toString();
    var result20 = int.tryParse(resultTY) ?? 0;
    dynamic resultty = (result20 * 20);
    if(resultty>=1000000){
      resultty = noValue;
    }

    var resultTN = TNcontroller.text.toString();
    var result10 = int.tryParse(resultTN) ?? 0;
    dynamic resulttn = (result10 * 10);
    if(resulttn>=1000000){
      resulttn = noValue;
    }

    var resultFE = FEcontroller.text.toString();
    var result5 = int.tryParse(resultFE) ?? 0;
    dynamic resultfe = (result5 *5);
    if(resultfe>=1000000){
      resultfe = noValue;
    }

    var resultTWO = TWOcontroller.text.toString();
    var result2 = int.tryParse(resultTWO) ?? 0;
    dynamic resulttwo = (result2 * 2);
    if(resulttwo>=1000000){
      resulttwo = noValue;
    }

    var resultONE = ONEcontroller.text.toString();
    var result1 = int.tryParse(resultONE) ?? 0;
    dynamic resultone = (result1 * 1);
    if(resultone>=1000000){
      resultone = noValue;
    }

    dynamic total;
    dynamic totalrupees;
    if(resultfh != noValue &&
        resultth != noValue &&
        resultoh != noValue &&
        resultfy != noValue &&
        resultty != noValue &&
        resulttn != noValue &&
        resultfe != noValue &&
        resulttwo != noValue &&
        resultone != noValue){
      totalrupees = resultfh + resultth + resultoh + resultfy + resultty + resulttn + resultfe + resulttwo + resultone;
      total = '₹$totalrupees';
    }
    else{
      total = 'Limit Exceed';
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Cash Calculator', style: TextStyle(fontSize: 30, fontWeight: FontWeight(400)),)),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: ColoredBox(
          color: Colors.blue.shade200,
          child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.blue.shade200,
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 8,
                    children: [
                      Container(
                        height: 58,
                        color: Color(0xFF8A8A8A),
                        child: Row(
                          spacing: 8,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top:4, bottom: 4),
                              child: Container(
                                width: 110,
                                child: Image.asset('assets/images/500.png', fit: BoxFit.fill,),
                              ),
                            ),
                            Container(
                              child: Center(child: Text('×', style: TextStyle(fontSize: 32),)),
                            ),
                             Container(
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
                                      setState(() {});
                                    },
                                  )
                              ),
                            Container(child: Text('= ₹$resultfh', style: TextStyle(fontSize: 30))),
                          ],
                        ),
                      ),
                      Container(
                        height: 58,
                        color: Color(0xFFFFAA1D),
                        child: Row(
                          spacing: 8,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top:4, bottom: 4),
                              child: Container(
                                width: 110,
                                child: Image.asset('assets/images/200.png', fit: BoxFit.fill,),
                              ),
                            ),
                            Container(
                              child: Center(child: Text('×', style: TextStyle(fontSize: 32),)),
                            ),
                            Container(
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
                                    setState(() {});
                                  },
                                )
                            ),
                            Container(child: Text('= ₹$resultth', style: TextStyle(fontSize: 30))),
                          ],
                        ),
                      ),
                      Container(
                        height: 58,
                        color: Color(0xFF967BB6),
                        child: Row(
                          spacing: 8,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top:4, bottom: 4),
                              child: Container(
                                width: 110,
                                child: Image.asset('assets/images/100.png', fit: BoxFit.fill,),
                              ),
                            ),
                            Container(
                              child: Center(child: Text('×', style: TextStyle(fontSize: 32),)),
                            ),
                            Container(
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
                                    setState(() {});
                                  },
                                )
                            ),
                            Container(child: Text('= ₹$resultoh', style: TextStyle(fontSize: 30))),
                          ],
                        ),
                      ),
                      Container(
                        height: 58,
                        color: Color(0xFF7CE4F3),
                        child: Row(
                          spacing: 8,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top: 4, bottom: 4),
                              child: Container(
                                width: 110,
                                child: Image.asset('assets/images/50.png', fit: BoxFit.fill,),
                              ),
                            ),
                            Container(
                              child: Center(child: Text('×', style: TextStyle(fontSize: 32),)),
                            ),
                            Container(
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
                                    setState(() {});
                                  },
                                )
                            ),
                            Container(child: Text('= ₹$resultfy', style: TextStyle(fontSize: 30))),
                          ],
                        ),
                      ),
                      Container(
                        height: 58,
                        color: Color(0xFFD4DC6C),
                        child: Row(
                          spacing: 8,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top:4 , bottom:4),
                              child: Container(
                                width: 110,
                                child: Image.asset('assets/images/20.png', fit: BoxFit.fill,),
                              ),
                            ),
                            Container(
                              child: Center(child: Text('×', style: TextStyle(fontSize: 32),)),
                            ),
                            Container(
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
                                    setState(() {});
                                  },
                                )
                            ),
                            Container(child: Text('= ₹$resultty', style: TextStyle(fontSize: 30))),
                          ],
                        ),
                      ),
                      Container(
                        height: 58,
                        color: Color(0xFFC39C67),
                        child: Row(
                          spacing: 8,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,top:4, bottom: 4),
                              child: Container(
                                width: 110,
                                child: Image.asset('assets/images/10.png', fit: BoxFit.fill,),
                              ),
                            ),
                            Container(
                              child: Center(child: Text('×', style: TextStyle(fontSize: 32),)),
                            ),
                            Container(
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
                                    setState(() {});
                                  },
                                )
                            ),
                            Container(child: Text('= ₹$resulttn', style: TextStyle(fontSize: 30))),
                          ],
                        ),
                      ),
                      Container(
                        height: 58,
                        color: Color(0xFF8CA376),
                        child: Row(
                          spacing: 8,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top:4, bottom: 4),
                              child: Container(
                                width: 110,
                                child: Image.asset('assets/images/5.png', fit: BoxFit.fill,),
                              ),
                            ),
                            Container(
                              child: Center(child: Text('×', style: TextStyle(fontSize: 32),)),
                            ),
                            Container(
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
                                    setState(() {});
                                  },
                                )
                            ),
                            Container(child: Text('= ₹$resultfe', style: TextStyle(fontSize: 30))),
                          ],
                        ),
                      ),
                      Container(
                        height: 58,
                        color: Color(0xFFDF8C4E),
                        child: Row(
                          spacing: 8,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top:4, bottom: 4),
                              child: Container(
                                width: 110,
                                child: Image.asset('assets/images/2.png', fit: BoxFit.fill,),
                              ),
                            ),
                            Container(
                              child: Center(child: Text('×', style: TextStyle(fontSize: 32),)),
                            ),
                            Container(
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
                                    setState(() {});
                                  },
                                )
                            ),
                            Container(child: Text('= ₹$resulttwo', style: TextStyle(fontSize: 30))),
                          ],
                        ),
                      ),
                      Container(
                        height: 58,
                        color: Color(0xFFE5B2B8),
                        child: Row(
                          spacing: 8,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top:4, bottom: 4),
                              child: Container(
                                width: 110,
                                child: Image.asset('assets/images/1.png', fit: BoxFit.fill,),
                              ),
                            ),
                            Container(
                              child: Center(child: Text('×', style: TextStyle(fontSize: 32),)),
                            ),
                            Container(
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
                                    setState(() {});
                                  },
                                )
                            ),
                            Container(child: Text('= ₹$resultone', style: TextStyle(fontSize: 30))),
                          ],
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          height: 80,
                          color: Colors.green,
                          child: Row(
                            children: [
                              InkWell(
                                child: Container(
                                  width: 50,
                                  height: 80,
                                  color: Colors.red,
                                  child: Center(child: Text('A/C', style: TextStyle(fontSize: 28, fontWeight: FontWeight(450)),))
                                ),
                                onTap: (){
                                  FHcontroller.clear();
                                  THcontroller.clear();
                                  OHcontroller.clear();
                                  FYcontroller.clear();
                                  TYcontroller.clear();
                                  TNcontroller.clear();
                                  FEcontroller.clear();
                                  TWOcontroller.clear();
                                  ONEcontroller.clear();
                                  setState(() {});
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Center(child: Text('Total Amount = $total', style: TextStyle(fontSize: 25))),
                              )
                            ],
                          )
                      )
                    ],
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }
}