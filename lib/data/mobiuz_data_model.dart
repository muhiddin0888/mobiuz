class MobiuzTarifModel {
  MobiuzTarifModel({
    required this.tarif,
    required this.price,
    required this.minute,
    required this.mb,
    required this.sms,
    required this.tarmoqIchda,
  });
  final String tarif;
  final String price;
  final String minute;
  final String tarmoqIchda;
  final String mb;
  final String sms;
}

class MobiuzInternetToplam {
  MobiuzInternetToplam({
    required this.mb,
    required this.price,
    required this.code,
  });
  final String mb;
  final String price;
  final String code;
}

class MobiuzTarifData {
  List<MobiuzTarifModel> tarifsMobiuz = [
    MobiuzTarifModel(
      tarif: "Omad Plus",
      price: "12 000 so‘m",
      minute: "400 daqiqa",
      mb: "500 MB",
      sms: "400 SMS",
      tarmoqIchda: '',
    ),
    MobiuzTarifModel(
      tarif: "Mobi 16",
      price: "16 000 so‘m",
      minute: "1 600 daqiqa",
      mb: "1 600 MB",
      sms: "160 SMS",
      tarmoqIchda: '',
    ),
    MobiuzTarifModel(
      tarif: "Mobi 20",
      price: "20 000 so‘m",
      minute: "2 000 daqiqa",
      mb: "2 000 MB",
      sms: "2 000 SMS",
      tarmoqIchda: '',
    ),
    MobiuzTarifModel(
      tarif: "Mobi 25",
      price: "25 000 so‘m",
      minute: "3 500 daqiqa",
      mb: "3 500 MB",
      sms: "3 500 SMS",
      tarmoqIchda: '',
    ),
    MobiuzTarifModel(
      tarif: "Mobi 30+",
      price: "30 000 so‘m",
      minute: "5 000 daqiqa",
      mb: "5 000 MB",
      sms: "3 500 SMS",
      tarmoqIchda: '',
    ),
    MobiuzTarifModel(
      tarif: "Mobi 40",
      price: "40 000 so‘m",
      minute: "5 000",
      mb: "8 000 MB",
      sms: "3 500 SMS",
      tarmoqIchda: "UNLIM",
    ),
    MobiuzTarifModel(
      tarif: "Mobi 50",
      price: "50 000 so‘m",
      minute: "5 000 daqiqa",
      mb: "10 000 MB",
      sms: "3 500 SMS",
      tarmoqIchda: "UNLIM",
    ),
    MobiuzTarifModel(
      tarif: "Mobi 60",
      price: "60 000 so‘m",
      minute: "5 000 daqiqa",
      mb: "15 000 MB",
      sms: "5 000 SMS",
      tarmoqIchda: "UNLIM",
    ),
    MobiuzTarifModel(
      tarif: "Mobi 70",
      price: "70 000 so‘m",
      minute: "5 000 daqiqa",
      mb: "20 000 MB",
      sms: "3 500 SMS",
      tarmoqIchda: "UNLIM",
    ),
    MobiuzTarifModel(
      tarif: "Mobi 90",
      price: "90 000 so‘m",
      minute: "5 000 daqiqa",
      mb: "65 000 MB",
      sms: "3 500 SMS",
      tarmoqIchda: "UNLIM",
    ),
    MobiuzTarifModel(
      tarif: "Mobi 110",
      price: "110 000 so‘m",
      minute: "UNLIM",
      mb: "80 000 MB",
      sms: "5 000 SMS",
      tarmoqIchda: "UNLIM",
    ),
    MobiuzTarifModel(
      tarif: "Mobi 150",
      price: "150 000 so‘m",
      minute: "UNLIM",
      mb: "10 0000 MB",
      sms: "10 000 SMS",
      tarmoqIchda: "UNLIM",
    ),
    MobiuzTarifModel(
      tarif: "Gap Yo‘q Mini",
      price: "20 000 so‘m",
      minute: "250 daqiqa",
      mb: "5 000 MB",
      sms: "0",
      tarmoqIchda: "UNLIM",
    ),
    MobiuzTarifModel(
      tarif: "GAP yo‘q",
      price: "35 000 so‘m",
      minute: "500 daqiqa",
      mb: "10 000 MB",
      sms: "0",
      tarmoqIchda: "UNLIM",
    ),
    MobiuzTarifModel(
      tarif: "GAP yo‘q Maxi",
      price: "55 000 so‘m",
      minute: "750 daqiqa",
      mb: "30 000 MB",
      sms: "750 SMS",
      tarmoqIchda: "UNLIM",
    ),
    MobiuzTarifModel(
      tarif: "GAP yo‘q Pro",
      price: "75 000 so‘m",
      minute: "1000 daqiqa",
      mb: "50 000 MB",
      sms: "750 SMS",
      tarmoqIchda: "UNLIM",
    ),
    MobiuzTarifModel(
      tarif: "GAP yo‘q Ultra",
      price: "100 000 so‘m",
      minute: "1500 daqiqa",
      mb: "90 000 MB",
      sms: "1500 SMS",
      tarmoqIchda: "UNLIM",
    ),
  ];
}

class MobiuzInternetData {
  List<MobiuzInternetToplam> mobiuzInternet = [
    MobiuzInternetToplam(
      mb: "300 MB",
      price: "8 000 so'm",
      code: "*171*019*1*010101164*1#",
    ),
    MobiuzInternetToplam(
      mb: "500 MB",
      price: "9 000 so'm",
      code: "*171*019*7*010101164*1#",
    ),
    MobiuzInternetToplam(
      mb: "1000 MB",
      price: "11 000 so'm",
      code: "*171*019*2*010101164*1#",
    ),
    MobiuzInternetToplam(
      mb: "2000 MB",
      price: "17 000 so'm",
      code: "*171*019*5*010101164*1#",
    ),
    MobiuzInternetToplam(
      mb: "3000 MB",
      price: "25 000 so'm",
      code: "*171*019*3*010101164*1#",
    ),
    MobiuzInternetToplam(
      mb: "5000 MB",
      price: "33 000 so'm",
      code: "*171*019*4*010101164*1#",
    ),
    MobiuzInternetToplam(
      mb: "10 000 MB",
      price: "50 000 so'm",
      code: "*171*019*6*010101164*1#",
    ),
    MobiuzInternetToplam(
      mb: "20 000 MB",
      price: "55 000 so'm",
      code: "*171*019*8*010101164*1#",
    ),
    MobiuzInternetToplam(
      mb: "30 000 MB",
      price: "65 000 so'm",
      code: "*171*019*9*010101164*1#",
    ),
    MobiuzInternetToplam(
      mb: "50 000 MB",
      price: "75 000 so'm",
      code: "*171*019*10*010101164*1#",
    ),
  ];
}
