import 'dart:convert';

import 'package:timeline/src/data/timeline/data_sources/timeline_data_source.dart';
import 'package:http/http.dart' as http;
import 'package:timeline/src/data/timeline/models/login_model.dart';
import 'package:timeline/src/data/timeline/models/user_model.dart';



class TimelineRemote implements TimelineDataSource {

  late final http.Client client;

  TimelineRemote({required this.client});

  @override
  Future<LoginModel> login() async{
    Uri url = Uri.parse(
      'https://my-json-server.typicode.com/danilovitolo/fakeApi4Sys/login',
    );
    LoginModel result;
    try {
      final response = await http.get(url);
      final responseData = json.decode(response.body) as Map<String, dynamic>;
      result = LoginModel.fromJson(responseData);
    } catch (e) {
      rethrow;
    }
    return result;
  }

  @override
  Future<UserModel> getUser() async {
    Uri url = Uri.parse(
      'https://my-json-server.typicode.com/danilovitolo/fakeApi4Sys/login',
    );
    LoginModel result;
    try {
      final response = await http.get(url);
      final responseData = json.decode(response.body) as Map<String, dynamic>;
      result = UserModel.fromJson(responseData);
    } catch (e) {
      rethrow;
    }
    return result;
  }

}