//Project Pertama Login
//Mentoring Udacoding
//Tangerang, 10 May 2020
//Yastril Ilyas
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{ 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        //pembungkus scaffold
      body: Container(
        //ukuran lebar sesuai layar
        width: MediaQuery.of(context).size.width,
        //jarak dalam padding
        padding: const EdgeInsets.all(8),
        color: Colors.orange,
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                   color: Colors.white,
                   shape: BoxShape.circle,
              ),
               child: Center(
                 child: Icon(Icons.person, size: 60, color: Colors.black87,),
               ),
            ),
            SizedBox(height: 20,),
            Text("TEKAJE CYBER login", style: TextStyle(fontSize: 25, color: Colors.white),),
            
            SizedBox(height: 20,),
            //Username
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.white)
                ),
                prefixIcon: Icon(Icons.person, size: 40,),
                hintText: "Input Username",
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.white),

              ),
            ),

          //Password
           SizedBox(height: 20,),
           TextFormField(
             //password secure ****
             obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.white)
                ),
                prefixIcon: Icon(Icons.lock, size: 40,),
                hintText: "Input Password",
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.white),

              ),
            ),
            //Tombol Button
            SizedBox(height: 20,),
            Card(
              color :Colors.red[800],
              elevation: 5,
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: (){},
                  child:Center (
                    child: Text("LOG IN", style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ),
              ),
            ),
            Text("Buat Akun", style: TextStyle(fontSize: 15, color: Colors.white),),
            Text("Lupa Password?", style: TextStyle(fontSize: 15, color: Colors.white),),
          ],
        ),
      ),
    );
  }
}