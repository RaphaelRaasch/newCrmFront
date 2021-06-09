import 'package:admin/constants.dart';
import 'package:admin/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardOneComponent extends StatelessWidget {
  const CardOneComponent({Key? key}) : super(key: key);

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
                "Dados do Cliente",
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
                            'Nome: ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            context
                                .read<SearchController>()
                                .matriculaDet
                                .first
                                .nome,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Data de nascimento: ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            context
                                .read<SearchController>()
                                .matriculaDet
                                .first
                                .dtNascimento
                                .toString(),
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'CPF: ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            context
                                .read<SearchController>()
                                .matriculaDet
                                .first
                                .cpf
                                .toString(),
                            style: TextStyle(
                              fontSize: 15,
                            ),
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
                            'GENERO: ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            context
                                .read<SearchController>()
                                .matriculaDet
                                .first
                                .genero
                                .toString(),
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'DIB: ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            context
                                .read<SearchController>()
                                .matriculaDet
                                .first
                                .dib
                                .toString(),
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
