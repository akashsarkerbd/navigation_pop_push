import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super. key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Akash',
           style: TextStyle( fontSize: 14,
           fontWeight:FontWeight.normal),),
           Divider(
           ),
           ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) =>SettingActivity()));
           },

               child: Icon(Icons.settings,size: 15))

         ],
       ),
     ),
    );
  }
}
class SettingActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sarkar',
              style: TextStyle( fontSize: 14,
                  fontWeight:FontWeight.normal),),
            Divider(
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context) =>HomeActivity()));

            },

                child: Icon(Icons.backspace_outlined,size: 15))

          ],
        ),
      ),
    );
  }
}