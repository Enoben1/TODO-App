import 'package:flutter/material.dart';
import 'package:todo/sabitler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController eCTRL = new TextEditingController();
  bool showdialog = false;
  List<String> listem = [];
  List<bool?>  textChkBox = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rkZeminArkaPlan,
      appBar: AppBar(
        backgroundColor: rkZeminArkaPlan,
        title: Text(
          "Yapılacaklar Listesi",
          style: TextStyle(color: rkCardForeColor),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  showdialog = true;
                });
              },
              icon: new Icon(Icons.add_comment)),
          IconButton(
              onPressed: () {
                setState(() {
                  int counter = 0;
                  while(counter < listem.length){
                    if(textChkBox[counter] == true){
                      textChkBox.removeAt(counter);
                      listem.removeAt(counter);
                      counter = 0;
                    }
                    else{
                      counter++;
                    }
                  }
                });
              },
              icon: new Icon(Icons.remove)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Visibility(
                visible: showdialog == true ? true : false,
                child: AlertDialog(
                  title: Text(
                    "EKLE",
                    style: TextStyle(color: rkCardForeColor),
                  ),
                  content: TextField(
                    controller: eCTRL,
                    style: TextStyle(color: rkCardForeColor.withOpacity(0.7)),
                    decoration: InputDecoration.collapsed(
                        hintText: "Buraya Yaz",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.3))),
                    maxLines: 3,
                    onSubmitted: (String text) {},
                  ),
                  backgroundColor: rkPasifCardBackColor,
                  actions: [
                    FlatButton(
                        onPressed: () {
                          setState(() {
                            showdialog = false;
                            listem.add(eCTRL.text);
                            textChkBox.add(false);
                            eCTRL.clear();
                          });
                        },
                        child: Text("KAYDET",
                            style: TextStyle(color: rkCardForeColor)))
                  ],
                )),
            Flexible(
                child: ListView.builder(
                    itemCount: listem.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Column(
                        children: [
                          Row(
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(value: textChkBox[index], onChanged: (value){
                                textChkBox[index] = value;
                                setState(() {

                                });
                              },),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: rkPasifCardBackColor),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        listem[index],
                                        style: tsActivCardColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
