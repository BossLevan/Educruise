import 'dart:convert';

import 'package:educruise/core/models/sign_up_response.dart';
import 'package:educruise/core/models/volunteers_form.dart';
import 'package:educruise/views/signup/sign_up_model.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  final http.Client _httpClient;
  static const baseUrl = 'https://teamcruise.herokuapp.com/';

  ApiClient({http.Client httpClient})
      : _httpClient = httpClient ?? http.Client();

  Future<SignUpResponse> signUp({SignUpModel model}) async {
    try {
      var volunteersForm = VolunteersForm(
        motivation: model.motivationToVolunteer,
        experience: model.experienceInVolunteering,
        phoneNumber: model.phoneNumber,
        role: model.selectedAccountType,
        email: model.email,
        password: model.password,
        confirmPassword: model.password,
      );

      var jsonn = jsonEncode(volunteersForm.toJson());
      print(jsonn);
      var jsonResponse = await _httpClient.post(
        '${baseUrl}api/v1/user/signup',
        body: jsonn,
      );
      print(jsonResponse.statusCode);
      if (jsonResponse.statusCode == 201) {
        print('hello');
        var result = json.decode(jsonResponse.body);
        SignUpResponse response = SignUpResponse.fromJson(result);
        return response;
      }
    } catch (e) {
      print(e);
      throw (e);
    }
  }

  // Future<NewsList> getNewsList() async {
  //   try {
  //     final jsonResponse =
  //         await _httpClient.post('${baseUrl}api/v1/user/signup', body: );

  //     //check if the request was successful
  //     if (jsonResponse.statusCode == 200) {
  //       Map<String, dynamic> result = json.decode(jsonResponse.body);

  //       NewsList newsList = NewsList.fromJson(result);
  //       newsList.news.removeWhere((element) {
  //         return element.imageUrl == null;
  //       });

  //       return newsList;
  //     }
  //   } catch (e) {
  //     throw (e);
  //   }
  // }
}
