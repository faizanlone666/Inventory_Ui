import 'package:ess_ess_agro/model/ess_ess_agro/ess_ess_agro_ledger_model.dart';
import 'package:ess_ess_agro/model/ess_ess_agro/ess_ess_agro_particular_person_ledger_model.dart';
import 'package:ess_ess_agro/model/ess_ess_agro/ess_ess_agro_stock_model.dart';
import 'package:ess_ess_agro/model/shabir_medicate/shabir_mediate_particular_person_model.dart';
import 'package:ess_ess_agro/model/shabir_medicate/shabir_medicate_ledger_model.dart';
import 'package:ess_ess_agro/model/shabir_medicate/shabir_medicate_stock_model.dart';

List<EssEssAgroLedgerModel> essAgroLedger = [
  EssEssAgroLedgerModel(1,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(2,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(3,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(4,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(5,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(6,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(1,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(2,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(3,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(4,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(5,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(6,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(1,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(2,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(3,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(4,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(5,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(6,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(1,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(2,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(3,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(4,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(5,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(6,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(1,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(2,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(3,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(4,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(5,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
  EssEssAgroLedgerModel(6,"Mahindra co limited","Baramulla","6234189837","test@mailinator.com"),
];

List<ShabirMedicateLedgerModel> shabirMedicateLedger = [
  ShabirMedicateLedgerModel(1,"Health care Agency co Limited","Baramulla","6234189837","test@mailinator.com"),
  ShabirMedicateLedgerModel(2,"Health care Agency co Limited","Baramulla","6234189837","test@mailinator.com"),
  ShabirMedicateLedgerModel(3,"Health care Agency co Limited","Baramulla","6234189837","test@mailinator.com"),
  ShabirMedicateLedgerModel(4,"Health care Agency co Limited","Baramulla","6234189837","test@mailinator.com"),
  ShabirMedicateLedgerModel(5,"Health care Agency co Limited","Baramulla","6234189837","test@mailinator.com"),
  ShabirMedicateLedgerModel(6,"Health care Agency co Limited","Baramulla","6234189837","test@mailinator.com"),
];
DateTime now = DateTime.now();
DateTime currentDate = DateTime(now.day,now.month,now.year);
Duration expiryDate = currentDate.difference(DateTime(25,11,2024));
int daysLeft = expiryDate.inDays;
List<EssEssAgroStockModel> essAgroStock = [
  EssEssAgroStockModel(1,"Abic","21-11-2023",DateTime(25,11,2024),"21","500",100),
  EssEssAgroStockModel(2,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",200),
  EssEssAgroStockModel(3,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",1000),
  EssEssAgroStockModel(4,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",5000),
  EssEssAgroStockModel(5,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",500),
  EssEssAgroStockModel(6,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
  EssEssAgroStockModel(7,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
  EssEssAgroStockModel(8,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
  EssEssAgroStockModel(9,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
  EssEssAgroStockModel(1,"Abic","21-11-2023",DateTime(25,11,2024),"21","500",100),
  EssEssAgroStockModel(2,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",200),
  EssEssAgroStockModel(3,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",1000),
  EssEssAgroStockModel(4,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",5000),
  EssEssAgroStockModel(5,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",500),
  EssEssAgroStockModel(6,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
  EssEssAgroStockModel(7,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
  EssEssAgroStockModel(8,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
  EssEssAgroStockModel(9,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
  EssEssAgroStockModel(1,"Abic","21-11-2023",DateTime(25,11,2024),"21","500",100),
  EssEssAgroStockModel(2,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",200),
  EssEssAgroStockModel(3,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",1000),
  EssEssAgroStockModel(4,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",5000),
  EssEssAgroStockModel(5,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",500),
  EssEssAgroStockModel(6,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
  EssEssAgroStockModel(7,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
  EssEssAgroStockModel(8,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
  EssEssAgroStockModel(9,"Mac","21-11-2023",DateTime(25,11,2024),"21","500",254),
];

List<ShabirMedicateStockModel> shabirMedicateStock = [
  ShabirMedicateStockModel(1,"Paracetamol","21-11-2023",DateTime(25,11,2024),"21","500",254),
  ShabirMedicateStockModel(2,"Paracetamol","21-11-2023",DateTime(25,11,2024),"21","500",254),
  ShabirMedicateStockModel(3,"Paracetamol","21-11-2023",DateTime(25,11,2024),"21","500",254),
  ShabirMedicateStockModel(4,"Paracetamol","21-11-2023",DateTime(25,11,2024),"21","500",254),
  ShabirMedicateStockModel(5,"Paracetamol","21-11-2023",DateTime(25,11,2024),"21","500",254),
  ShabirMedicateStockModel(6,"Paracetamol","21-11-2023",DateTime(25,11,2024),"21","500",254),
  ShabirMedicateStockModel(7,"Paracetamol","21-11-2023",DateTime(25,11,2024),"21","500",254),
  ShabirMedicateStockModel(8,"Paracetamol","21-11-2023",DateTime(25,11,2024),"21","500",254),
  ShabirMedicateStockModel(9,"Paracetamol","21-11-2023",DateTime(25,11,2024),"21","500",254),
];

List<EssEssAgroParticularPersonModel> essEssAgroParticularPersonModelList = [
EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co sopore Nowpora Jagir Baramulla jammu and kashmir dasjhfkjafnd fdf vfu dfvhd fdydhfua","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  EssEssAgroParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co sopore Nowpora Jagir Baramulla jammu and kashmir","5000","8000","120475"),
];

List<ShabirMedicateParticularPersonModel>shabirMedicateParticularPersonModelList = [
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
  ShabirMedicateParticularPersonModel("21-01-2023","12548","8899545","Mahindra and co","5000","8000","120475"),
];