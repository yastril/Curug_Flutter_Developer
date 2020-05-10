//Project Pertama Register
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
      home: Register(),
    );
  }
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register>{ 
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

            SizedBox(height: 20,),
            Text("REGISTER", style: TextStyle(fontSize: 25, color: Colors.white),),
            
            SizedBox(height: 20,),
            //Username
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.white)
                ),
                prefixIcon: Icon(Icons.person, size: 40,),
                hintText: "Input Name",
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.white),

              ),
            ),

            SizedBox(height: 20,),
            //Telepon
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.white)
                ),
                prefixIcon: Icon(Icons.phone_iphone, size: 40,),
                hintText: "Input Phone",
                labelText: "Phone",
                labelStyle: TextStyle(color: Colors.white),

              ),
            ),

          SizedBox(height: 20,),
            //Email
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.white)
                ),
                prefixIcon: Icon(Icons.email, size: 40,),
                hintText: "Input Email",
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),

            //Tombol Button Daftar
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
                    child: Text("REGISTER", style: TextStyle(fontSize: 20,color: Colors.white),),
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