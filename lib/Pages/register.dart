import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController name=new TextEditingController();
  TextEditingController age=new TextEditingController();
  TextEditingController mob=new TextEditingController();
  TextEditingController adrs=new TextEditingController();
  TextEditingController pin=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController pas=new TextEditingController();
  void SiginUp()
  {
    print("Name:"+name.text);
    print("Age :"+age.text);
    print("Mobile :"+mob.text);
    print("Address :"+adrs.text);
    print("Pincode :"+pin.text);
    print("Email :"+email.text);
    print("Password :"+pas.text);

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("REGISTRATION"),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                    labelText: ("Enter your name"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: age,
                decoration: InputDecoration(
                    labelText: ("Enter your age"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: mob,
                decoration: InputDecoration(
                    labelText: ("Enter your mob"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: adrs,
                decoration: InputDecoration(
                    labelText: ("Enter your address"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: pin,
                decoration: InputDecoration(
                    labelText: ("Enter your pincode"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: ("Enter your email"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: pas,
                decoration: InputDecoration(
                    labelText: ("Enter your Password"),
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: SiginUp, child: Text("REGISTER")),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("BACK"))
            ],
          ),
        ),
      ),
    );
  }
}
