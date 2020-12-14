import 'dart:async';
import 'dart:io';
import 'package:educruise/core/models/create_reports.dart';
import 'package:educruise/core/models/reports.dart';
import 'package:educruise/core/models/sign_up_response.dart';
import 'package:educruise/core/models/volunteers_form.dart';
import 'package:educruise/core/services/network_util.dart';

class ApiClient {
  /// Instantiating a class of the [NetworkHelper]
  NetworkHelper _netUtil = NetworkHelper();

  static final BASE_URL = "https://teamcruise.herokuapp.com/api/v1";

  static final LOGIN_URL = BASE_URL + "/user/login";
  static final SIGN_UP_URL = BASE_URL + "/user/signup";
  static final GET_ME_URL = BASE_URL + "/user/getMe";

  static final CREATE_REPORT_URL = BASE_URL + "/reports/create";
  static final FETCH_ALL_REPORT_URL = BASE_URL + "/reports/fetchAll";
  static final FETCH_REPORT_URL = BASE_URL + "/reports/fetch";

  /// A function that verifies login details from the database POST.
  /// with [email] and [password]
  Future<User> login(String email, String password) {
    Map<String, String> header = {"content-Type": "application/json"};
    return _netUtil.postLogin(LOGIN_URL,
        headers: header,
        body: {"email": email, "password": password}).then((dynamic res) {
      if (res["error"]) {
        throw (res["message"]);
      } else {
        return User.map(res["data"]);
      }
    }).catchError((e) {
      print(e);
      if (e is SocketException) {
        throw ("Unable to connect to the server, check your internet connection");
      }
      if (e is TimeoutException) {
        throw ("Request timeout, try again");
      }
      throw (e);
    });
  }

  /// A function that creates a new user POST with [VolunteersForm] model
  Future<User> signUp(VolunteersForm form) {
    Map<String, String> body;
    body = {
      "email": form.email,
      "phone": form.phone,
      "motivation": form.motivation,
      "experience": form.experience,
      "role": form.role,
      "password": form.password,
      "confirmPassword": form.confirmPassword
    };
    return _netUtil.post(SIGN_UP_URL, body: body).then((dynamic res) {
      if (res["error"]) {
        throw (res["message"]);
      } else {
        return User.map(res["data"]);
      }
    }).catchError((e) {
      print(e);
      if (e is SocketException) {
        throw ("Unable to connect to the server, check your internet connection");
      }
      throw (e);
    });
  }

  /// A function that fetches the particular current logged in user with [token]
  /// into a model of [User] GET.
  Future<dynamic> getCurrentUser(String token) async {
    Map<String, String> header = {
      "Authorization": "Bearer $token",
      "content-Type": "application/json"
    };
    return _netUtil.get(GET_ME_URL, headers: header).then((dynamic res) {
      if (res["error"] == true) {
        throw (res["message"]);
      } else {
        Map result = {'user': User.map(res["data"]), 'token': token};
        return result;
      }
    }).catchError((e) {
      print(e);
      if (e is SocketException) {
        throw ("Unable to connect to the server, check your internet connection");
      }
      throw (e);
    });
  }

  /// A function that creates a new report or abuse
  /// with [CreateReport] model
  Future<dynamic> addReport(CreateReport report) async {
    Map<String, String> header = {"content-Type": "application/json"};
    return _netUtil.post(CREATE_REPORT_URL, headers: header, body: {
      "abuserFullName": report.abuserFullName,
      "abuserEmail": report.abuserEmail,
      "abuserPhone": report.abuserPhone,
      "abuserFacebook": report.abuserFacebook,
      "abuserTwitter": report.abuserTwitter,
      "abuserInstagram": report.abuserInstagram,
      "anonymous": report.anonymous,
      "evidence": report.evidence,
      "personName": report.personName,
      "personPhone": report.personPhone,
      "personEmail": report.personEmail
    }).then((dynamic res) {
      if (res["error"] == true) {
        throw (res["message"]);
      } else {
        return res["message"];
      }
    }).catchError((e) {
      print(e);
      if (e is SocketException) {
        throw ("Unable to connect to the server, check your internet connection");
      }
      throw (e);
    });
  }

  /// A function that fetches all reports of abuse from the database
  /// into a model of [Reports] GET.
  Future<List<Reports>> fetchAllReports(String token) async {
    Map<String, String> header = {
      "Authorization": "Bearer $token",
      "content-Type": "application/json"
    };
    List<Reports> reports;
    return _netUtil
        .get(FETCH_ALL_REPORT_URL, headers: header)
        .then((dynamic res) {
      if (res["error"] == true) {
        throw (res["message"]);
      } else {
        var rest = res["data"] as List;
        reports = rest.map<Reports>((json) => Reports.fromJson(json)).toList();
        return reports;
      }
    }).catchError((e) {
      print(e);
      if (e is SocketException) {
        throw ("Unable to connect to the server, check your internet connection");
      }
      throw (e);
    });
  }

  /// A function that fetches a particular abuse report from the database
  /// with id into a model of [Reports] GET.
  Future<Reports> fetchReport(String id, String token) async {
    Map<String, String> header = {
      "Authorization": "Bearer $token",
      "content-Type": "application/json"
    };
    final FETCH_REPORT = FETCH_REPORT_URL + "/$id";
    return _netUtil.get(FETCH_REPORT, headers: header).then((dynamic res) {
      if (res["error"] == true) {
        throw (res["message"]);
      } else {
        return Reports.fromJson(res["data"]);
      }
    }).catchError((e) {
      print(e);
      if (e is SocketException) {
        throw ("Unable to connect to the server, check your internet connection");
      }
      throw (e);
    });
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
