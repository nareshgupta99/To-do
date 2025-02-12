import 'dart:convert';

import 'package:app_todo/model/authentication.dart';
import 'package:http/http.dart' as http;

class AuthenticationApi {
  static Future<void> registeredUser({required name, required email, required password}) async {
    var url = Uri.parse("http://localhost:8082/api/v1/user/signup");
    final response = await http.post(url,body: {"name":name,"email":email,"password":password});
    final json = jsonDecode(response.body);
    print(json);
  }
}
