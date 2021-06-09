import 'package:admin/models/contrato_model.dart';
import 'package:admin/models/matricula_detalhada_model.dart';
import 'package:admin/models/matricula_model.dart';
import 'package:admin/repositorys/contrato_repository.dart';
import 'package:admin/repositorys/matricula_detalhada_repository.dart';
import 'package:admin/repositorys/matricula_repository.dart';
import 'package:mobx/mobx.dart';
part 'search_controller.g.dart';

class SearchController = _SearchControllerBase with _$SearchController;

abstract class _SearchControllerBase with Store {
  @observable
  bool isLoading = false;

  @observable
  List<MatriculaModel> matriculaList = [];

  @observable
  List<MatriculaDetalhadaModel> matriculaDet = [];

  @observable
  List<ContratoModel> contratoList = [];

  @action
  Future<void> loading() async {
    isLoading = !isLoading;
    await Future.delayed(Duration(milliseconds: 3000));
    isLoading = !isLoading;
  }

  @action
  Future getMtr(data) async {
    isLoading = !isLoading;
    matriculaList.clear();
    var response = await MatriculaRepository().matriculaList(data);
    matriculaList = response;
    print(matriculaList.length);
    isLoading = !isLoading;
  }

  @action
  Future getMtrDet(data) async {
    isLoading = !isLoading;
    matriculaDet.clear();
    var response = await MatriculaDetalhadaRepository().matriculaDetList(data);
    matriculaDet = response;
    print(matriculaDet.first.nome);
    isLoading = !isLoading;
  }

  @action
  Future getContrato(data) async {
    isLoading = !isLoading;
    contratoList.clear();
    var response = await ContratoRepository().getContratoList(data);
    contratoList = response;
    print(contratoList.first.contrato);
    isLoading = !isLoading;
  }
}
