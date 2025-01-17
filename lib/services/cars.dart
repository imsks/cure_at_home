import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:cure_at_home/models/product.dart';
// import 'package:cure_at_home/models/shop.dart';
import 'package:cure_at_home/utilities/constants/values.dart';

class CarService {
  String baseCarUrl = apiBaseUrl + "/admin/cars";

  // Get All Cars Data
  getAllCarsData() async {
    // Send the response
    final response = await http.get(
      Uri.encodeFull(baseCarUrl + "/get-all-cars/"),
    );

    return jsonDecode(response.body)["data"];
  }

  // Get All Cars Data
  getACarData(String carName, String carModel, String carType) async {
    // carModel = carModel.replaceAll(" ", '%20');
    // Send the response
    final response = await http.get(
      Uri.encodeFull(
          'https://ms-honda-sales-app.herokuapp.com/api/admin/cars/get-car-data/$carName/$carModel/$carType'),
    );
    

    if (jsonDecode(response.body)["status"] == "Success") {
      return jsonDecode(response.body)["data"]["data"];
    } else {
      return jsonDecode(response.body);
    }
  }
}
