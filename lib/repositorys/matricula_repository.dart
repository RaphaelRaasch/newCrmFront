import 'dart:convert';

import 'package:admin/models/matricula_model.dart';
import 'package:http/http.dart' as http;

class MatriculaRepository {
  List<MatriculaModel> list = [];
  Future matriculaList(id) async {
    try {
      var url = Uri.parse('http://209.126.106.46:8000/api/matricula/?cpf=$id');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var decode = json.decode(response.body) as List;
        list.clear();
        decode.forEach((element) {
          list.add(MatriculaModel.fromJson(element));
        });
        print(list.first.matricula);
        return list;
      }
    } catch (e) {
      print(e);
    }
  }
}
