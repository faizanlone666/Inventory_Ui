import 'package:ess_ess_agro/costants/data_helper.dart';
import 'package:ess_ess_agro/costants/text_strings.dart';
import 'package:ess_ess_agro/features/dashboard/controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static const List<String> companyName = [essEssAgro, shabirMedicate];

  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.put(DashboardController());
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 60.0,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => Text(dashboardController.companyName.value,style: Theme.of(context).textTheme.displayLarge,)),
                  Obx(
                    () => DropdownButton(
                      items: companyName
                          .map((value) => DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              ))
                          .toList(),
                      value: dashboardController.companyName.value,
                      onChanged: (value) {
                        dashboardController.updateCompanyValue(value);
                      },
                      dropdownColor: Colors.white,
                      icon: Icon(
                        Icons.arrow_drop_down_circle,
                        color: Colors.grey.shade400,
                      ),
                      elevation: 5,
                      alignment: Alignment.center,
                      focusColor: Colors.white,
                      iconSize: 15,
                      underline: Container(),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 5.0,
                    color: Colors.grey.shade100,
                    child: Column(
                      children: [
                        SizedBox(
                          child: Text("Ledger", style: Theme.of(context).textTheme.headlineLarge,),
                        ),
                        Expanded(
                          child: Obx(
                            () => ListView.builder(
                              scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: dashboardController.companyName.value ==
                                        essEssAgro
                                    ? essAgroLedger.length
                                    : shabirMedicateLedger.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    leading: dashboardController.companyName.value ==
                                            essEssAgro
                                        ? Text("${essAgroLedger[index].sNo}",style: Theme.of(context).textTheme.headlineMedium,)
                                        : Text("${shabirMedicateLedger[index].sNo}",style: Theme.of(context).textTheme.headlineMedium),
                                    title: dashboardController.companyName.value ==
                                            essEssAgro
                                        ? Text(essAgroLedger[index].name,style: Theme.of(context).textTheme.headlineMedium)
                                        : Text(shabirMedicateLedger[index].name,style: Theme.of(context).textTheme.headlineMedium),
                                    onTap: (){},
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 5.0,),
                Expanded(
                  child: Card(
                    color: Colors.grey.shade100,
                    elevation: 5.0,
                    child: Column(
                      children: [
                        SizedBox(
                          child: Text("Stock", style: Theme.of(context).textTheme.headlineLarge,),
                        ),
                        Expanded(
                          child: Obx(() => ListView.builder(
                            itemCount: dashboardController.companyName.value ==
                                essEssAgro
                                ? essAgroStock.length
                                : shabirMedicateStock.length,
                            itemBuilder: (context, index){
                              return ListTile(
                                leading: dashboardController.companyName.value ==
                                    essEssAgro
                                    ? Text("${essAgroStock[index].sNo}",style: Theme.of(context).textTheme.headlineMedium)
                                    : Text("${shabirMedicateStock[index].sNo}",style: Theme.of(context).textTheme.headlineMedium),
                                title: dashboardController.companyName.value ==
                                    essEssAgro
                                    ? Text(essAgroStock[index].productName,style: Theme.of(context).textTheme.headlineMedium)
                                    : Text(shabirMedicateStock[index].productName,style: Theme.of(context).textTheme.headlineMedium),
                                trailing: dashboardController.companyName.value ==
                                    essEssAgro
                                    ? Text("$daysLeft")
                                    : Text(shabirMedicateStock[index].dateOfPurchase,style: Theme.of(context).textTheme.headlineMedium),
                                onTap: (){},
                              );
                            },
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
