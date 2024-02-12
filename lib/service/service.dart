
import 'dart:convert';

import 'package:blogapp/model/postmodel.dart';
import 'package:http/http.dart' as http;



class Api{
  Future<dynamic> senddata(
      String name, String age,String mobile,String adrs,String pincode,String email,String pass)
     async{
    var client=http.Client();
    var api=Uri.parse("172.16.185.176:3001/api/user/add/");
    var rsp=await client.post(api,
    headers: <String,String>{
      "content-Type":"application/json:charset:UTF-8"
    },
      body: jsonEncode({
       " name":name,
        "age":age,
        "mob":mobile,
        "adrs":adrs,
        "pincode":pincode,
        "email":email,
        "pass":pass
      })
    );
    if(rsp.statusCode==200)
      {
        return blogFromJson(rsp.body);
      }
    else
      {
        throw Exception(this);
      }
  }
 }