import 'package:admin/constants.dart';
import 'package:admin/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class SearchComponent extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final controller = context.read<SearchController>();
        return AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.elasticOut,
          width: 500,
          decoration: BoxDecoration(
              color: secondaryColor, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  controller: textController,
                  enabled: controller.isLoading ? false : true,
                  decoration: InputDecoration(
                      hintText: 'Search', border: InputBorder.none),
                ),
              ),
              controller.isLoading
                  ? Container(
                      padding: EdgeInsets.all(15),
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(),
                    )
                  : Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            if (textController.text.isNotEmpty) {
                              await context
                                  .read<SearchController>()
                                  .getMtr(textController.text);
                              print(
                                'Lista: ' +
                                    context
                                        .read<SearchController>()
                                        .matriculaList
                                        .length
                                        .toString(),
                              );
                              textController.clear();
                            } else {
                              return;
                            }
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              padding: EdgeInsets.all(defaultPadding * 0.75),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text('CPF'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (textController.text.isNotEmpty) {
                              context
                                  .read<SearchController>()
                                  .getMtrDet(textController.text);
                              context
                                  .read<SearchController>()
                                  .getContrato(textController.text);
                              textController.clear();
                            } else {
                              return;
                            }
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              padding: EdgeInsets.all(defaultPadding * 0.75),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text('MAT'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        );
      },
    );
  }
}
