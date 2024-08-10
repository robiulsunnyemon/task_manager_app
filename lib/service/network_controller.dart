import 'dart:convert';
import '../data/response_object.dart';
import 'package:http/http.dart';

class NetworkController{


  static Future<ResponseObject> getRequest(String uri) async {
    try{
      final Response response = await get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body);
        return ResponseObject(
            status_code: 200, issuccess: true, responseBody: decodedResponse);
      } else {
        return ResponseObject(
            status_code: response.statusCode,
            issuccess: false,
            responseBody: "");
      }
    }catch (e){
      return ResponseObject(status_code: -1, issuccess: false, responseBody: "",errorMessage: e.toString());
    }
  }

  static Future<ResponseObject> postRequest(String uri,Map<String,dynamic> params) async {
    try{
      final Response response = await post(Uri.parse(uri),body: jsonEncode(params),headers:{"application-type":"content/json"});
      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body);
        return ResponseObject(
            status_code: 200, issuccess: true, responseBody: decodedResponse);
      } else {
        return ResponseObject(
            status_code: response.statusCode,
            issuccess: false,
            responseBody: "");
      }
    }catch (e){
      return ResponseObject(status_code: -1, issuccess: false, responseBody: "",errorMessage: e.toString());
    }
  }


}