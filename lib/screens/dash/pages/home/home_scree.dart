import 'package:admin/constants.dart';
import 'package:admin/controllers/search_controller.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dash/components/card_one_component.dart';
import 'package:admin/screens/dash/components/card_tre.dart';
import 'package:admin/screens/dash/components/card_two_component.dart';
import 'package:admin/screens/dash/components/contrato_table.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  final controller = SearchController();
  final textStyle = TextStyle();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Observer(
          builder: (context) {
            print(MediaQuery.of(context).size.width);
            return Column(
              children: [
                Header(),
                SizedBox(
                  height: defaultPadding,
                ),
                SizedBox(),
                context.read<SearchController>().matriculaList.isNotEmpty
                    ? Container(
                        height: 80,
                        width: double.maxFinite,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: context
                              .read<SearchController>()
                              .matriculaList
                              .length,
                          itemBuilder: (context, index) {
                            var mat = context
                                .read<SearchController>()
                                .matriculaList[index];
                            return Padding(
                              padding: EdgeInsets.all(defaultPadding),
                              child: InkWell(
                                onTap: () async {
                                  await context
                                      .read<SearchController>()
                                      .getMtrDet(mat.matricula);
                                  context
                                      .read<SearchController>()
                                      .getContrato(mat.matricula);
                                },
                                child: Container(
                                  width: 200,
                                  height: 50,
                                  padding:
                                      EdgeInsets.all(defaultPadding * 0.75),
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(mat.matricula),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    : SizedBox(),
                context.read<SearchController>().matriculaDet.isNotEmpty
                    ? Column(
                        children: [
                          Wrap(
                            children: [
                              CardOneComponent(),
                              CardTwoComponent(),
                              CardTreeComponent(),
                            ],
                          ),
                        ],
                      )
                    : SizedBox(),
                context.read<SearchController>().contratoList.isNotEmpty
                    ? ContratoTable()
                    : SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
