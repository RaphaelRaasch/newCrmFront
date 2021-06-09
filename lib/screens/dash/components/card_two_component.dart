import 'package:admin/constants.dart';
import 'package:admin/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardTwoComponent extends StatelessWidget {
  const CardTwoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Container(
        height: 300,
        width: 450,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(defaultPadding),
        ),
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Matricula ${context.read<SearchController>().matriculaDet.first.matricula}-${context.read<SearchController>().matriculaDet.first.codigoMatricula}",
                style: TextStyle(fontSize: 25),
              ),
              Divider(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Remuneracao: ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "R\$${context.read<SearchController>().matriculaDet.first.valorMatricula}",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Bloqueio emprestimo: ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          context
                                      .read<SearchController>()
                                      .matriculaDet
                                      .first
                                      .bloqueioEmprestimo ==
                                  true
                              ? Icon(
                                  Icons.check,
                                  color: Colors.green,
                                )
                              : Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Permite emprestimo: ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          context
                                      .read<SearchController>()
                                      .matriculaDet
                                      .first
                                      .bloqueioEmprestimo ==
                                  true
                              ? Icon(
                                  Icons.check,
                                  color: Colors.green,
                                )
                              : Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Pensao Alimenticia: ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          context
                                      .read<SearchController>()
                                      .matriculaDet
                                      .first
                                      .pensaoAlimenticia ==
                                  true
                              ? Icon(
                                  Icons.check,
                                  color: Colors.green,
                                )
                              : Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Representante legal: ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          context
                                      .read<SearchController>()
                                      .matriculaDet
                                      .first
                                      .representanteLegal ==
                                  true
                              ? Icon(
                                  Icons.check,
                                  color: Colors.green,
                                )
                              : Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(),
              Wrap(
                children: [
                  Text(
                    'Descricao: ',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    context
                        .read<SearchController>()
                        .matriculaDet
                        .first
                        .descricaoMatricula
                        .toString(),
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
