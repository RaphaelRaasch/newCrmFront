import 'dart:convert';
import 'dart:core';
import 'package:admin/models/contrato_model.dart';
import 'package:http/http.dart' as http;

class ContratoRepository {
  List<ContratoModel> list = [];
  Future getContratoList(matricula) async {
    try {
      var url = Uri.parse(
          'http://209.126.106.46:8000/api/contratoemprestimo/?matricula=$matricula');
      var response = await http.get(url);
      print(response.body);
      if (response.statusCode == 200) {
        var decode = json.decode(response.body) as List;
        list.clear();
        decode.forEach((element) {
          list.add(ContratoModel.fromJson(element));
        });
        print(list.length);
        return list;
      }
    } catch (e) {
      print(e);
    }
  }
}
