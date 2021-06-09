import 'package:admin/constants.dart';
import 'package:admin/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContratoTable extends StatelessWidget {
  const ContratoTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.read<SearchController>().contratoList.isNotEmpty
        ? Column(
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding),
                height: 400,
                width: double.maxFinite,
                child: Container(
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(defaultPadding),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Column(
                      children: [
                        Table(
                          children: [
                            TableRow(
                              children: [
                                Text('Banco '),
                                Text('Contrato'),
                                Text('Inicio'),
                                Text('Final'),
                                Text('Inclusao'),
                                Text('R\$ Contrato'),
                                Text('R\$ Parcela'),
                                Text('Prazo'),
                                Text('A pagar'),
                                Text('Saldo'),
                                Text('Taxa'),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Container(
                          height: 200,
                          child: ListView.builder(
                            itemCount: context
                                .read<SearchController>()
                                .contratoList
                                .length,
                            itemBuilder: (context, index) {
                              var contrato = context
                                  .read<SearchController>()
                                  .contratoList[index];
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(child: Text(contrato.nomeBanco)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(child: Text(contrato.contrato)),
                                      Expanded(
                                          child: Text(contrato.dataInicio)),
                                      Expanded(
                                          child: Text(
                                              contrato.competenciaFimDesconto)),
                                      Expanded(
                                          child: Text(contrato.dataInclusao)),
                                      Expanded(
                                          child: Text(
                                              'R\$ ${contrato.valorEmprestimo}')),
                                      Expanded(
                                          child: Text(
                                              'R\$ ${contrato.valorParcela}')),
                                      Expanded(child: Text('Prazo TODO')),
                                      Expanded(
                                          child: Text(
                                              'R\$ ${contrato.parcelasAberto}')),
                                      Expanded(
                                          child: Text('R\$ ${contrato.saldo}')),
                                      Expanded(
                                          child: Text('R\$ ${contrato.taxa}')),
                                    ],
                                  ),
                                  Divider(),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        : SizedBox();
  }
}
