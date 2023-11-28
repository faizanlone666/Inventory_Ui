import 'package:ess_ess_agro/costants/text_strings.dart';
import 'package:flutter/material.dart';

class LegerAddNewEntryPerPerson extends StatelessWidget {
  const LegerAddNewEntryPerPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 5,
        title: Text(
          "Add new Entry",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20.0,),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.date_range_outlined),
                  hintText: "Transaction Date",
                  labelText: "Transaction Date",
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2.0))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.document_scanner_outlined),
                  hintText: "Recite no",
                  labelText: "Recite no",
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2.0))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.document_scanner_outlined),
                  hintText: "Invoice no",
                  labelText: "Invoice no",
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2.0))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.type_specimen_outlined),
                  hintText: "Description",
                  labelText: "Description",
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2.0))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.currency_rupee_outlined),
                  hintText: "Debit",
                  labelText: "Debit",
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2.0))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.currency_rupee_outlined),
                  hintText: "Credit",
                  labelText: "Credit",
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2.0))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.currency_rupee_outlined),
                hintText: "Balance",
                labelText: "Balance",
                border: OutlineInputBorder(),
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(width: 2.0)),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.2,
              child: ElevatedButton(
                  onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 2,
                  shape: const RoundedRectangleBorder(),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.grey,
                  side: const BorderSide(color: Colors.black),
                  alignment: Alignment.center
              ),
                  child: const Text("Save"),),
            )
          ],
        ),
      ),
    );
  }
}
