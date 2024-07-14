import 'package:http/http.dart' as http;
import 'package:post_api/model/user_model.dart';

class APIManager {
  Future<UserModel> createUser(String name, String jobTitle) async {
    final Uri apiUrl = Uri.parse('https://reqres.in/api/users');

    final response = await http.post(
      apiUrl,
      body: {"name": name, "job": jobTitle},
    );

    if (response.statusCode == 201) {
      final String responseString = response.body;

      return userModelFromJson(responseString);
    } else {
      return null;
    }
  }
}
