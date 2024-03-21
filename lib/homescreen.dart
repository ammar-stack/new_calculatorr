import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  int answer = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: controller1,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'num 1'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: controller2,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'num 2'),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      int num1 = int.parse(controller1.text.toString());
                      int num2 = int.parse(controller2.text.toString());
                      answer = num1+num2;
                      setState(() {
                        
                      });
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 25),
                    )),
                ElevatedButton(
                    onPressed: () {
                      int num1 = int.parse(controller1.text.toString());
                      int num2 = int.parse(controller2.text.toString());
                      answer = num1-num2;
                      setState(() {
                        
                      });
                    },
                    child: const Text(
                      '-',
                      style: TextStyle(fontSize: 25),
                    )),
                ElevatedButton(
                    onPressed: () {
                      int num1 = int.parse(controller1.text.toString());
                      int num2 = int.parse(controller2.text.toString());
                      answer = num1*num2;
                      setState(() {
                        
                      });
                    },
                    child: const Text(
                      '*',
                      style: TextStyle(fontSize: 25),
                    )),
                ElevatedButton(
                    onPressed: () {
                      int num1 = int.parse(controller1.text.toString());
                      int num2 = int.parse(controller2.text.toString());
                      double answerr = num1/num2;
                      answer = answerr.toInt();
                      setState(() {
                        
                      });
                    },
                    child: const Text(
                      '/',
                      style: TextStyle(fontSize: 25),
                    )),
                
              ],
            ),
            const SizedBox(height: 50,),
            const Text('Result',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            const SizedBox(height: 50,),
            Text(answer.toString(),style:const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
