import 'dart:convert';

import 'package:eltohod/models/libraryModel.dart';
import 'package:eltohod/myServices/values.dart';
import 'package:http/http.dart'as http;

class libraryServices {
  values val=new  values();
  //String url= val.getBaseUrl() as String;
  Future <List<libraryType>>getPdf()async{
    var body={
      "fileType":"PDF"
    };
    var header={
      "Content-Type":"application/json",
      "X-Auth-Token":"b9fe694397cfc048e0c93b67e0c856ac"
    };
    try{
      final responce=await http.post("http://entshr.com/lova/API/en/twa7od/library",body:json.encode(body),headers: header);
      if(responce.statusCode==200 && responce.body!=null)
      {
        List pdfItem = json.decode(responce.body)['Message'];
        print(pdfItem);
        return pdfItem.map((e) => libraryType.fromJson(e)).toList();

      }

    }
    catch(e) {
      print(e.toString());
    }
  }
  Future <List<libraryType>>getAudio()async{
    var body={
      "fileType":"AUDIO"
    };
    var header={
      "Content-Type":"application/json",
      "X-Auth-Token":"b9fe694397cfc048e0c93b67e0c856ac"
    };
    try{
      final responce=await http.post("http://entshr.com/lova/API/en/twa7od/library",body:json.encode(body),headers: header);
      if(responce.statusCode==200 && responce.body!=null)
      {
        List slideritems = json.decode(responce.body)['Message'];
        return slideritems.map((e) => libraryType.fromJson(e)).toList();
      }

    }
    catch(e) {
      print(e.toString());
    }
  }
  Future <List<libraryType>>getVideo()async{
    var body={
      "fileType":"VIDEO"
    };
    var header={
      "Content-Type":"application/json",
      "X-Auth-Token":"b9fe694397cfc048e0c93b67e0c856ac"
    };
    try{
      final responce=await http.post("http://entshr.com/lova/API/en/twa7od/library",body:json.encode(body),headers: header);
      if(responce.statusCode==200 && responce.body!=null)
      {
        List slideritems = json.decode(responce.body)['Message'];
        return slideritems.map((e) => libraryType.fromJson(e)).toList();
      }

    }
    catch(e) {
      print(e.toString());
    }
  }
}