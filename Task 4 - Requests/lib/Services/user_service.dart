import 'package:dio/dio.dart';
import 'package:requests/Model/user.dart';

class UserService {
  String baseUrl = "https://jsonplaceholder.typicode.com";
  String usersLink = "/users";

  Future<List<User>> getUser() async {
    List<User> usersList = [];
    Response response = await Dio().get('$baseUrl$usersLink');
    var data = response.data;

    data.forEach((element) {
      User myUser = User.fromJson(element);
      usersList.add(myUser);
    });
    return usersList;
  }
}
