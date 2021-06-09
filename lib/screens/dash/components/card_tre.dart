import 'package:admin/constants.dart';
import 'package:admin/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardTreeComponent extends StatelessWidget {
  const CardTreeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        height: 300,
        width: 450,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(defaultPadding),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dados Bancarios",
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
                          "${context.read<SearchController>().matriculaDet.first.codigoBanco} - ${context.read<SearchController>().matriculaDet.first.nomeBanco}",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Agencia: ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "${context.read<SearchController>().matriculaDet.first.codigoAgencia}",
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
                          'Tipo de conta: ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "TODO",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Conta: ',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "${context.read<SearchController>().matriculaDet.first.numeroPagamento}",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
