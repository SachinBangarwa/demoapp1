import 'package:demoapp/creat_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveData extends StatefulWidget {
  const SaveData({super.key});

  @override
  State<SaveData> createState() => _SaveDataState();
}

class _SaveDataState extends State<SaveData> {
  final controler=TextEditingController();
  final passwordControler=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller:controler ,
            decoration: const InputDecoration(hintText: "Email",border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            controller:passwordControler ,
            decoration: const InputDecoration(hintText: "Password",border: OutlineInputBorder()),
          ), const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: (){

          }, child: const Text("Login")),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const creataccount();
            }));
          }, child: const Text('Creeat account')),
        ],
      ),
    );
  }

}
