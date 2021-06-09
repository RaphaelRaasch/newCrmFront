// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchController on _SearchControllerBase, Store {
  final _$isLoadingAtom = Atom(name: '_SearchControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$matriculaListAtom = Atom(name: '_SearchControllerBase.matriculaList');

  @override
  List<MatriculaModel> get matriculaList {
    _$matriculaListAtom.reportRead();
    return super.matriculaList;
  }

  @override
  set matriculaList(List<MatriculaModel> value) {
    _$matriculaListAtom.reportWrite(value, super.matriculaList, () {
      super.matriculaList = value;
    });
  }

  final _$matriculaDetAtom = Atom(name: '_SearchControllerBase.matriculaDet');

  @override
  List<MatriculaDetalhadaModel> get matriculaDet {
    _$matriculaDetAtom.reportRead();
    return super.matriculaDet;
  }

  @override
  set matriculaDet(List<MatriculaDetalhadaModel> value) {
    _$matriculaDetAtom.reportWrite(value, super.matriculaDet, () {
      super.matriculaDet = value;
    });
  }

  final _$contratoListAtom = Atom(name: '_SearchControllerBase.contratoList');

  @override
  List<ContratoModel> get contratoList {
    _$contratoListAtom.reportRead();
    return super.contratoList;
  }

  @override
  set contratoList(List<ContratoModel> value) {
    _$contratoListAtom.reportWrite(value, super.contratoList, () {
      super.contratoList = value;
    });
  }

  final _$loadingAsyncAction = AsyncAction('_SearchControllerBase.loading');

  @override
  Future<void> loading() {
    return _$loadingAsyncAction.run(() => super.loading());
  }

  final _$getMtrAsyncAction = AsyncAction('_SearchControllerBase.getMtr');

  @override
  Future<dynamic> getMtr(dynamic data) {
    return _$getMtrAsyncAction.run(() => super.getMtr(data));
  }

  final _$getMtrDetAsyncAction = AsyncAction('_SearchControllerBase.getMtrDet');

  @override
  Future<dynamic> getMtrDet(dynamic data) {
    return _$getMtrDetAsyncAction.run(() => super.getMtrDet(data));
  }

  final _$getContratoAsyncAction =
      AsyncAction('_SearchControllerBase.getContrato');

  @override
  Future<dynamic> getContrato(dynamic data) {
    return _$getContratoAsyncAction.run(() => super.getContrato(data));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
matriculaList: ${matriculaList},
matriculaDet: ${matriculaDet},
contratoList: ${contratoList}
    ''';
  }
}
