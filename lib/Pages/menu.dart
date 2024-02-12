import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  String email="",pass="";
  TextEditingController mail=new TextEditingController();
  TextEditingController pas=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME PAGE"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.limeAccent.withOpacity(.3),
                  Colors.black.withOpacity(.2)
                ]
            )
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: mail,
              decoration: InputDecoration(
                  labelText: ("Enter emailid"),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: pas,
              decoration: InputDecoration(
                  labelText: ("Enter Password"),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder()
                    ),
                    onPressed: (){

                    }, child: Text("SIGN IN",style: TextStyle(color: Colors.limeAccent),))),
            SizedBox(height: 10,),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder()
                  ),
                  onPressed: (){

                  }, child: Text("SIGN UP",style: TextStyle(color: Colors.limeAccent),)),
            )
          ],
        ),
      ),
    );
  }
}
