import 'package:ess_ess_agro/costants/text_strings.dart';
import 'package:ess_ess_agro/features/ledger/controller/add_new_company_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewCompany extends StatelessWidget {
  const AddNewCompany({super.key});

  static const List<String> companyName = [essEssAgro, shabirMedicate];

  @override
  Widget build(BuildContext context) {
    final addNewCompanyController = Get.put(AddNewCompanyController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Company"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20.0,),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.date_range_outlined),
                  hintText: "Company Name",
                  labelText: "Company Name",
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2.0))),
            ),
            const SizedBox(height: 20.0,),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.date_range_outlined),
                  hintText: "Company address",
                  labelText: "Company address",
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2.0))),
            ),
            const SizedBox(height: 20.0,),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.date_range_outlined),
                  hintText: "Company phone no",
                  labelText: "Company phone no",
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2.0))),
            ),
            const SizedBox(height: 20.0,),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.date_range_outlined),
                  hintText: "Company Email",
                  labelText: "Company Email",
                  border: OutlineInputBorder(),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 2.0))),
            ),
            const SizedBox(height: 20.0,),
            Obx(()=>DropdownButton(
                items: companyName
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                value: addNewCompanyController.companyName.value,
                onChanged: (value) {
                  addNewCompanyController.updateCompanyValue(value);
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
                underline: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            const SizedBox(
              height: 30.0,
            ),
            const SizedBox(height: 20.0,),
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
                    alignment: Alignment.center),
                child: const Text("Save"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
