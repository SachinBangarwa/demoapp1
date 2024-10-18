import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class creatscreen extends StatefulWidget {
  const creatscreen({super.key});

  @override
  State<creatscreen> createState() => _creatscreenState();
}

class _creatscreenState extends State<creatscreen> {

  final email=TextEditingController();
  final password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('creat account'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextField(
          controller:email ,
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
              controller: password,
              decoration: InputDecoration(
                  hintText: ' User Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: Icon(Icons.mark_email_read_outlined)
              ),
            ),  SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
               savedata();

          }, child: Text('creat account'))
          ],
          ),
  );
}
Future savedata()async{
    String v=email.text;
    String k=password.text;
    SharedPreferences shared=await SharedPreferences.getInstance();
    shared.setString('email', v);
    shared.setString('password', k);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Your account successful')));

}
}
