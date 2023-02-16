import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:moli/model/model.dart';


class MoliHelpers {
  MoliHelpers._();


  static final MoliHelpers moliHelpers = MoliHelpers._();

  Future<Molil?> fetchMoli() async {
    final String BASE_URL = "https://fakestoreapi.com/products";

    http.Response res = await http.get(Uri.parse(BASE_URL));

    if (res.statusCode == 200) {
      Map<String, dynamic> decodeData = jsonDecode(res.body);

      Molil molil = Molil.fromJson(json: decodeData);
      print(molil);
      return molil;
    } else {
      return null;
    }
  }

}