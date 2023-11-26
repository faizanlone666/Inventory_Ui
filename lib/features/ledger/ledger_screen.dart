import 'package:ess_ess_agro/costants/data_helper.dart';
import 'package:ess_ess_agro/costants/text_strings.dart';
import 'package:flutter/material.dart';

class LedgerScreen extends StatelessWidget {
  const LedgerScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    ledger,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  ElevatedButton(
                    onPressed: () {},
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
                ],
              ),
            ),
          ),
          const Divider(),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.05,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    labelText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Card(
                  elevation: 5.0,
                  color: Colors.grey.shade100,
                  child: ListView.builder(
                      itemCount: essAgroLedger.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text(
                            "${essAgroLedger[index].sNo}",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          title: Text(essAgroLedger[index].name,
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                          onTap: () {},
                        );
                      }),
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Expanded(
                child: Card(
                  elevation: 5.0,
                  color: Colors.grey.shade100,
                  child: ListView.builder(
                      itemCount: essAgroLedger.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text("${shabirMedicateLedger[index].sNo}",
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                          title: Text(shabirMedicateLedger[index].name,
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                          onTap: () {},
                        );
                      }),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
