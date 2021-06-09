class MatriculaModel {
  String matricula;
  String createdAt;
  String updatedAt;
  bool isActive;
  String cpf;
  bool insertedByCpfApi;

  MatriculaModel(this.matricula, this.createdAt, this.updatedAt, this.isActive,
      this.cpf, this.insertedByCpfApi);

  MatriculaModel.fromJson(Map<String, dynamic> json)
      : matricula = json['matricula'],
        createdAt = json['created_at'],
        updatedAt = json['updated_at'],
        isActive = json['is_active'],
        cpf = json['cpf'],
        insertedByCpfApi = json['inserted_by_cpf_api'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['matricula'] = this.matricula;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['is_active'] = this.isActive;
    data['cpf'] = this.cpf;
    data['inserted_by_cpf_api'] = this.insertedByCpfApi;
    return data;
  }
}
