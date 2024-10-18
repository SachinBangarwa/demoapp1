import 'package:demoapp/sava_data_screen/creat-screen.dart';
import 'package:demoapp/sava_data_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen'),),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: ' User Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: Icon(Icons.mark_email_read_outlined)
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
                hintText: ' User Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.mark_email_read_outlined)
            ),
          ),
          SizedBox(height: 20,),

          ElevatedButton(onPressed: (){

            getvalue();
          }, child: Text('Login')),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return creatscreen();
            }));
          }, child: Text('Creat account')),
        ],
      ),
    );
  }

  Future getvalue()async{
    String email=emailController.text;
    String password=passwordController.text;
    SharedPreferences shred=await SharedPreferences.getInstance();
   String? aEmail= shred.getString('email');
    String? apassword= shred.getString('password');

    if(email==aEmail &&password==apassword){
      shred.setBool('isLogin', true);
   Navigator.push(context, MaterialPageRoute(builder: (context){
     return HomeScreen();
   }));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('No value')));
    }
  }
}
