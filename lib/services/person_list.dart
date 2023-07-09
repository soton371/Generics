import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_navigationbar/models/api_response.dart';
import 'package:my_navigationbar/models/person_model.dart';
import 'package:my_navigationbar/utilities/parse_json.dart';

Future personList() async {
  final Uri url = Uri.parse(
      "http://192.168.0.164/soton/ati-all-apps/raw/master/person_list.json");
  var getData = await http.get(url);
  ApiResponse<List<PersonModel>> response = parseJson<List<PersonModel>>(
    getData.body,
    (data) => List<PersonModel>.from(data.map((x) => PersonModel.fromJson(x))),
  );
  if (response.status == "200") {
    debugPrint("response: ${response.data.length}, response.data[0]: ${response.data[0].personName}");
    return response.data;
  } else {
    return [];
  }
}
