import 'package:http/http.dart' as http;
import 'package:user_info_app/model/users.dart';

class UsersService {
  static Future<List<Users>> getUsersData() async {
    http.Response response = await http.get(
      Uri.parse(
        'https://jsonplaceholder.typicode.com/users',
      ),
    );

    try {
      if (response.statusCode == 200) {
        return usersFromJson(response.body).toList();
      } else {
        return Future.error(' Error fetching data');
      }
    } catch (err) {
      return Future.error(' Error fetching data $err');
    }
  }
}
