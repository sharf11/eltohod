import 'package:shared_preferences/shared_preferences.dart';

class values {
  String lang = "";
  String url="";


  Future<String> getBaseUrl() async {
    String Section1="http://entshr.com/lova/API/";
    SharedPreferences prefs = await SharedPreferences.getInstance();
    lang = prefs.get('lang');
    String Section2=lang+"/twa7od";
    url=Section1+Section2;
    return url;
  }
  }