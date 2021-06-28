import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Custom Toast Example", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
          SizedBox(height: 30,),

          Container(
            width: 200,
            child: ElevatedButton(onPressed:(){
              _displaySuccessToast(context);
            }, child: Text("Success Toast"),),
          ),
          SizedBox(height: 10,),


          Container(
            width: 200,
            child: ElevatedButton(onPressed:(){
              _displayErrorToast(context);

            }, child: Text("Error Toast"),),
          ),
          SizedBox(height: 10,),


          Container(
            width: 200,
            child: ElevatedButton(onPressed:(){
              _displayWarningToast(context);

            }, child: Text("Warring Toast"),),
          ),
          SizedBox(height: 10,),


          Container(
            width: 200,
            child: ElevatedButton(onPressed:(){
              _displayInfoToast(context);

            }, child: Text("Info Toast"),),
          ),
          SizedBox(height: 10,),

          Container(
            width: 200,
            child: ElevatedButton(onPressed:(){
              _displayDeleteToast(context);

            }, child: Text("Delete Toast"),),
          ),
          SizedBox(height: 10,),

          Container(
            width: 200,
            child: ElevatedButton(onPressed:(){
              _displayCustomToast(context);
            }, child: Text("Custom Toast"),),
          ),
          SizedBox(height: 14,),


        ],
      ),



    );
  }

  void _displaySuccessToast(context){
    MotionToast.success(
        title: "Success",
        titleStyle: TextStyle(fontWeight: FontWeight.bold),
        description: "This is Success Toast"
    ).show(context);
  }

  void _displayErrorToast(context){
    MotionToast.error(
        title: "Error",
        titleStyle: TextStyle(fontWeight: FontWeight.bold),
        description: "This is Error Toast"
    ).show(context);
  }

  void _displayWarningToast(context){
    MotionToast.warning(
        title: "Error",
        titleStyle: TextStyle(fontWeight: FontWeight.bold),
        description: "This is warning Toast"
    ).show(context);
  }


  void _displayInfoToast(context){
    MotionToast.info(
        title: "Info",
        titleStyle: TextStyle(fontWeight: FontWeight.bold),
        description: "This is Info Toast"
    ).show(context);
  }

  void _displayDeleteToast(context){
    MotionToast.delete(
        title: "Delete",
        titleStyle: TextStyle(fontWeight: FontWeight.bold),
        description: "This is Delete Toast"
    ).show(context);
  }

  void _displayCustomToast(context){
   MotionToast(icon: Icons.email,
       description: "This is my email Toast",
       color: Colors.red,
     title: "Custom Toast",
     titleStyle: TextStyle(fontWeight: FontWeight.bold),
     descriptionStyle: TextStyle(fontSize: 12),
   ).show(context);
  }



}

