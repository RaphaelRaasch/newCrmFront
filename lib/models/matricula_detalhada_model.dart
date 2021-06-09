class MatriculaDetalhadaModel {
  String? matricula;
  String? createdAt;
  String? updatedAt;
  bool? isActive;
  String? cpf;
  String nome;
  String? dtNascimento;
  String? identidade;
  String? genero;
  String? codigoBanco;
  String? nomeBanco;
  String? codigoAgencia;
  String? nomeAgencia;
  String? enderecoAgencia;
  String? ufAgencia;
  int? orgaoPagador;
  String? tipoPagamento;
  String? numeroPagamento;
  String? situacao;
  String? nit;
  String? codigoMatricula;
  String? descricaoMatricula;
  String? dib;
  double valorMatricula;
  bool? representanteLegal;
  bool? pensaoAlimenticia;
  bool? bloqueioEmprestimo;
  bool? permiteEmprestimo;
  String? competencia;
  double? margemConsignavel;
  double? margemEmprestimo;
  double? quantidadeEmprestimo;
  bool? possuiCartao;
  double? margemCartao;
  bool? realTime;

  MatriculaDetalhadaModel(
      this.matricula,
      this.createdAt,
      this.updatedAt,
      this.isActive,
      this.cpf,
      this.nome,
      this.dtNascimento,
      this.identidade,
      this.genero,
      this.codigoBanco,
      this.nomeBanco,
      this.codigoAgencia,
      this.nomeAgencia,
      this.enderecoAgencia,
      this.ufAgencia,
      this.orgaoPagador,
      this.tipoPagamento,
      this.numeroPagamento,
      this.situacao,
      this.nit,
      this.codigoMatricula,
      this.descricaoMatricula,
      this.dib,
      this.valorMatricula,
      this.representanteLegal,
      this.pensaoAlimenticia,
      this.bloqueioEmprestimo,
      this.permiteEmprestimo,
      this.competencia,
      this.margemConsignavel,
      this.margemEmprestimo,
      this.quantidadeEmprestimo,
      this.possuiCartao,
      this.margemCartao,
      this.realTime);

  MatriculaDetalhadaModel.fromJson(Map<String, dynamic> json)
      : matricula = json['matricula'],
        createdAt = json['created_at'],
        updatedAt = json['updated_at'],
        isActive = json['is_active'],
        cpf = json['cpf'],
        nome = json['nome'],
        dtNascimento = json['dt_nascimento'],
        identidade = json['identidade'],
        genero = json['genero'],
        codigoBanco = json['codigo_banco'],
        nomeBanco = json['nome_banco'],
        codigoAgencia = json['codigo_agencia'],
        nomeAgencia = json['nome_agencia'],
        enderecoAgencia = json['endereco_agencia'],
        ufAgencia = json['uf_agencia'],
        orgaoPagador = json['orgao_pagador'],
        tipoPagamento = json['tipo_pagamento'],
        numeroPagamento = json['numero_pagamento'],
        situacao = json['situacao'],
        nit = json['nit'],
        codigoMatricula = json['codigo_matricula'],
        descricaoMatricula = json['descricao_matricula'],
        dib = json['dib'],
        valorMatricula = json['valor_matricula'],
        representanteLegal = json['representante_legal'],
        pensaoAlimenticia = json['pensao_alimenticia'],
        bloqueioEmprestimo = json['bloqueio_emprestimo'],
        permiteEmprestimo = json['permite_emprestimo'],
        competencia = json['competencia'],
        margemConsignavel = json['margem_consignavel'],
        margemEmprestimo = json['margem_emprestimo'],
        quantidadeEmprestimo = json['quantidade_emprestimo'],
        possuiCartao = json['possui_cartao'],
        margemCartao = json['margem_cartao'],
        realTime = json['real_time'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['matricula'] = this.matricula;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['is_active'] = this.isActive;
    data['cpf'] = this.cpf;
    data['nome'] = this.nome;
    data['dt_nascimento'] = this.dtNascimento;
    data['identidade'] = this.identidade;
    data['genero'] = this.genero;
    data['codigo_banco'] = this.codigoBanco;
    data['nome_banco'] = this.nomeBanco;
    data['codigo_agencia'] = this.codigoAgencia;
    data['nome_agencia'] = this.nomeAgencia;
    data['endereco_agencia'] = this.enderecoAgencia;
    data['uf_agencia'] = this.ufAgencia;
    data['orgao_pagador'] = this.orgaoPagador;
    data['tipo_pagamento'] = this.tipoPagamento;
    data['numero_pagamento'] = this.numeroPagamento;
    data['situacao'] = this.situacao;
    data['nit'] = this.nit;
    data['codigo_matricula'] = this.codigoMatricula;
    data['descricao_matricula'] = this.descricaoMatricula;
    data['dib'] = this.dib;
    data['valor_matricula'] = this.valorMatricula;
    data['representante_legal'] = this.representanteLegal;
    data['pensao_alimenticia'] = this.pensaoAlimenticia;
    data['bloqueio_emprestimo'] = this.bloqueioEmprestimo;
    data['permite_emprestimo'] = this.permiteEmprestimo;
    data['competencia'] = this.competencia;
    data['margem_consignavel'] = this.margemConsignavel;
    data['margem_emprestimo'] = this.margemEmprestimo;
    data['quantidade_emprestimo'] = this.quantidadeEmprestimo;
    data['possui_cartao'] = this.possuiCartao;
    data['margem_cartao'] = this.margemCartao;
    data['real_time'] = this.realTime;
    return data;
  }
}
