import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:ess_ess_agro/costants/data_helper.dart';
import 'package:ess_ess_agro/costants/text_strings.dart';
import 'package:ess_ess_agro/features/stock/controller/stock_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StockScreen extends StatelessWidget {
  StockScreen({super.key});

  static const List<String> companyName = [essEssAgro, shabirMedicate];
  ScrollController horizontalScroll = ScrollController();
  ScrollController verticalScroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    final stockController = Get.put(StockScreenController());
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
                  Text(
                    "Stock",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Obx(
                    () => DropdownButton(
                      items: companyName
                          .map((value) => DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              ))
                          .toList(),
                      value: stockController.companyName.value,
                      onChanged: (value) {
                        stockController.updateCompanyValue(value);
                      },
                      dropdownColor: Colors.white,
                      icon: const Icon(
                        Icons.arrow_downward_sharp,
                        color: Colors.grey,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.065,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      elevation: 2,
                      shape: const RoundedRectangleBorder(),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.deepPurple,
                      alignment: Alignment.center),
                  child: Text(
                    "New Entry",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.065,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      labelText: "Search",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      )),
                ),
              ),
            ],
          ),
          Expanded(
            child: AdaptiveScrollbar(
              underColor: Colors.blueGrey.withOpacity(0.3),
              sliderDefaultColor: Colors.grey.withOpacity(0.7),
              sliderActiveColor: Colors.grey,
              controller: verticalScroll,
              child: AdaptiveScrollbar(
                controller: horizontalScroll,
                position: ScrollbarPosition.bottom,
                underColor: Colors.blueGrey.withOpacity(0.3),
                sliderDefaultColor: Colors.grey.withOpacity(0.7),
                sliderActiveColor: Colors.grey,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  controller: verticalScroll,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: horizontalScroll,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Obx(
                        () => DataTable(
                          columns: [
                            DataColumn(
                                label: Text(
                              "S.No.",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                              overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Product Name",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                              overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Purchase Date",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                              overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Exp Date",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                              overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Months Left",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                              overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Qty",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                              overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Rate",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                              overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Stock",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                              overflow: TextOverflow.ellipsis,
                            ))
                          ],
                          rows: stockController.companyName.value == essEssAgro
                              ? essAgroStock
                                  .map(
                                    (stock) => DataRow(
                                      cells: [
                                        DataCell(
                                          Text(
                                            "${stock.sNo}",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            stock.productName,
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            stock.dateOfPurchase,
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            "${stock.expiryDate}",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            "$daysLeft",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            stock.qty,
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            stock.rate,
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            "${stock.stock}",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  .toList()
                              : shabirMedicateStock
                                  .map(
                                    (stock) => DataRow(
                                      cells: [
                                        DataCell(
                                          Text(
                                            "${stock.sNo}",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            stock.productName,
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            stock.dateOfPurchase,
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            "${stock.expiryDate}",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            "$daysLeft",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            stock.qty,
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            stock.rate,
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        DataCell(
                                          Text(
                                            "${stock.stock}",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
