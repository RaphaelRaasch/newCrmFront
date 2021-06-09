class ContratoModel {
  String contrato;
  String createdAt;
  String updatedAt;
  bool isActive;
  String codigoEmprestimo;
  String descricaoEmprestimo;
  String codigoBanco;
  String nomeBanco;
  String dataInicio;
  String competenciaInicioDesconto;
  String competenciaFimDesconto;
  String dataInclusao;
  String situacao;
  bool excluidoAps;
  bool excluidoBanco;
  double valorEmprestimo;
  double valorParcela;
  int quantidadeParcelas;
  int parcelasAberto;
  double saldo;
  double taxa;
  String matricula;

  ContratoModel(
      this.contrato,
      this.createdAt,
      this.updatedAt,
      this.isActive,
      this.codigoEmprestimo,
      this.descricaoEmprestimo,
      this.codigoBanco,
      this.nomeBanco,
      this.dataInicio,
      this.competenciaInicioDesconto,
      this.competenciaFimDesconto,
      this.dataInclusao,
      this.situacao,
      this.excluidoAps,
      this.excluidoBanco,
      this.valorEmprestimo,
      this.valorParcela,
      this.quantidadeParcelas,
      this.parcelasAberto,
      this.saldo,
      this.taxa,
      this.matricula);

  ContratoModel.fromJson(Map<String, dynamic> json)
      : contrato = json['contrato'],
        createdAt = json['created_at'],
        updatedAt = json['updated_at'],
        isActive = json['is_active'],
        codigoEmprestimo = json['codigo_emprestimo'],
        descricaoEmprestimo = json['descricao_emprestimo'],
        codigoBanco = json['codigo_banco'],
        nomeBanco = json['nome_banco'],
        dataInicio = json['data_inicio'],
        competenciaInicioDesconto = json['competencia_inicio_desconto'],
        competenciaFimDesconto = json['competencia_fim_desconto'],
        dataInclusao = json['data_inclusao'],
        situacao = json['situacao'],
        excluidoAps = json['excluido_aps'],
        excluidoBanco = json['excluido_banco'],
        valorEmprestimo = json['valor_emprestimo'],
        valorParcela = json['valor_parcela'],
        quantidadeParcelas = json['quantidade_parcelas'],
        parcelasAberto = json['parcelas_aberto'],
        saldo = json['saldo'],
        taxa = json['taxa'],
        matricula = json['matricula'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contrato'] = this.contrato;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['is_active'] = this.isActive;
    data['codigo_emprestimo'] = this.codigoEmprestimo;
    data['descricao_emprestimo'] = this.descricaoEmprestimo;
    data['codigo_banco'] = this.codigoBanco;
    data['nome_banco'] = this.nomeBanco;
    data['data_inicio'] = this.dataInicio;
    data['competencia_inicio_desconto'] = this.competenciaInicioDesconto;
    data['competencia_fim_desconto'] = this.competenciaFimDesconto;
    data['data_inclusao'] = this.dataInclusao;
    data['situacao'] = this.situacao;
    data['excluido_aps'] = this.excluidoAps;
    data['excluido_banco'] = this.excluidoBanco;
    data['valor_emprestimo'] = this.valorEmprestimo;
    data['valor_parcela'] = this.valorParcela;
    data['quantidade_parcelas'] = this.quantidadeParcelas;
    data['parcelas_aberto'] = this.parcelasAberto;
    data['saldo'] = this.saldo;
    data['taxa'] = this.taxa;
    data['matricula'] = this.matricula;
    return data;
  }
}
