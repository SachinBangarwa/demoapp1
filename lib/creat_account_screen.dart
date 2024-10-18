import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class creataccount extends StatefulWidget {
  const creataccount({super.key});

  @override
  State<creataccount> createState() => _creataccountState();
}

class _creataccountState extends State<creataccount> {
  final controler=TextEditingController();
  final value=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller:controler ,
            decoration: InputDecoration(hintText: "Email",border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            controller:value ,
            decoration: InputDecoration(hintText: "Email",border: OutlineInputBorder()),
          ), SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: (){}, child: Text("Login")),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            savedata();
          }, child: Text('Creeat account')),
        ],
      ),
    );
  }

  Future savedata()async{
    String email= controler.text;
    String password= value.text;
  }

}
