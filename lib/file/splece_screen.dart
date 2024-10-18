import 'package:demoapp/sava_data_screen/Login_screen.dart';
import 'package:demoapp/sava_data_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpleceScreen extends StatefulWidget {
  const SpleceScreen({super.key});

  @override
  State<SpleceScreen> createState() => _SpleceScreenState();
}

class _SpleceScreenState extends State<SpleceScreen> {
  @override
  void initState() {
    setvalue();
    super.initState();
  }

  Future setvalue()async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    bool ?value=sharedPreferences.getBool('isLogin');

    if(value==true){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return HomeScreen();
      }));
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return LoginScreen();
      }));
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50))
          ),
            child: Image.network('https://images.unsplash.com/photo-1661953118591-2f5be524698e?q=80&w=2054&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
        ),

      ),
    );
  }
}
