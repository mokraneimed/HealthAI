import 'dart:convert';

import 'package:http/http.dart' as http;

class Patient {
  var data;
  Patient({
    required this.data,
  });
  factory Patient.fromJson(Map<String, dynamic> json) {
    final data = json;
    return Patient(data: data);
  }
}

class DataService {
  Future<Patient> getData() async {
    //api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}

    final response =
        await http.get(Uri.parse('http://localhost:8000/api/patient'));
    print(response);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return Patient.fromJson(json);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}

Future<Patient> fetchPatient() async {
  final response =
      await http.get(Uri.parse('http://localhost:8000/api/patient'));
  print(response);
  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    return Patient.fromJson(json);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
