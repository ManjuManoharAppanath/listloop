import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List clr=[100,200,300];
  List tt=['box1','box2','box3'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
      Scaffold(body: ListView.builder(itemCount: clr.length,itemBuilder: (BuildContext context,int i)
      {
       return Padding(
         padding: const EdgeInsets.all(10),
         child: Container(
           height: 70,
           color: Colors.purple[clr[i]],
           child: Center(child: Text(tt[i])),
         ),
       );
      }
      ),
      ),
    );
  }
}
