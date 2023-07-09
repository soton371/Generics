import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_navigationbar/models/api_response.dart';
import 'package:my_navigationbar/models/place_model.dart';
import 'package:my_navigationbar/utilities/parse_json.dart';

Future placeList() async {
  final Uri url = Uri.parse(
      "http://192.168.0.164/soton/ati-all-apps/raw/master/place_list.json");
  var getData = await http.get(url);
  ApiResponse<List<PlaceModel>> response = parseJson<List<PlaceModel>>(
    getData.body,
    (data) => List<PlaceModel>.from(data.map((x) => PlaceModel.fromJson(x))),
  );
  if (response.status == "200") {
    debugPrint("response: ${response.data.length}, response.data[0]: ${response.data[0].placeName}");
    return response.data;
  } else {
    return [];
  }
}
