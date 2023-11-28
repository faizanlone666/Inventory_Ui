import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:ess_ess_agro/costants/data_helper.dart';
import 'package:ess_ess_agro/costants/text_strings.dart';
import 'package:ess_ess_agro/features/ledger/screens/ledger_new_entry_particular_person.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParticularPersonsScreen extends StatelessWidget {
  ParticularPersonsScreen(
      {super.key,
      required this.name,
      required this.address,
      required this.emailId,
      required this.phoneNbr,
      required this.company});

  String name;
  String address;
  String phoneNbr;
  String emailId;
  String company;
  ScrollController horizontalScroll = ScrollController();
  ScrollController verticalScroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 5,
        title: Text(
          ledger,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: (()=> Get.to(const LegerAddNewEntryPerPerson())),
              style: ElevatedButton.styleFrom(
                  elevation: 2,
                  shape: const RoundedRectangleBorder(),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.grey.shade100,
                  side: BorderSide(color: Colors.grey.shade300),
                  alignment: Alignment.center),
              child: Text(
                "New Entry",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Card(
              elevation: 2.0,
              color: Colors.grey.shade100,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name: $name",
                            style: Theme.of(context).textTheme.headlineMedium),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text("Address: $address",
                            style: Theme.of(context).textTheme.headlineMedium),
                      ],
                    ),
                    const SizedBox(
                      width: 100.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Phone No: $phoneNbr",
                            style: Theme.of(context).textTheme.headlineMedium),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text("EmailId: $emailId",
                            style: Theme.of(context).textTheme.headlineMedium)
                      ],
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                    controller: verticalScroll,
                    scrollDirection: Axis.vertical,
                    child: SingleChildScrollView(
                      controller: horizontalScroll,
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0, bottom: 16.0),
                        child: DataTable(
                          border: TableBorder.all(),
                          sortAscending: true,
                          sortColumnIndex: 3,
                          columns: [
                            DataColumn(
                                label: Text(
                              "Transaction Date",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                                  overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Recite No",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                                  overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Invoice No",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                                  overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Description",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                                  overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Debit",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                                  overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Credit",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                                  overflow: TextOverflow.ellipsis,
                            )),
                            DataColumn(
                                label: Text(
                              "Balance",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium,
                                  overflow: TextOverflow.ellipsis,
                            )),
                          ],
                          rows: company == essEssAgro ? essEssAgroParticularPersonModelList
                              .map((index) => DataRow(cells: [
                                    DataCell(
                                      Text(
                                        index.trxDate,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.bodyLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    DataCell(Text(
                                      index.reciteNo,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context).textTheme.bodyLarge,
                                      overflow: TextOverflow.ellipsis,
                                    )),
                                    DataCell(
                                      Text(
                                        index.invoiceNo,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.bodyLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        index.desc,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.bodyLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        index.debit,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.bodyLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        index.credit,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.bodyLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        index.balance,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.bodyLarge,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ]))
                              .toList() : shabirMedicateParticularPersonModelList
                              .map((index) => DataRow(cells: [
                            DataCell(
                              Text(
                                index.trxDate,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            DataCell(Text(
                              index.reciteNo,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyLarge,
                              overflow: TextOverflow.ellipsis,
                            )),
                            DataCell(
                              Text(
                                index.invoiceNo,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            DataCell(
                              Text(
                                index.desc,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            DataCell(
                              Text(
                                index.debit,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            DataCell(
                              Text(
                                index.credit,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            DataCell(
                              Text(
                                index.balance,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ]))
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
