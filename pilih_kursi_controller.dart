import 'package:get/get.dart';

class PilihKursiController extends GetxController {
  //TODO: Implement PilihKursiController

  var indexGerbong = 0.obs;

  void gantiGerbong(int indexGerbongTerpilih) {
    indexGerbong.value = indexGerbongTerpilih;
    gerbong.refresh();
    reset0();
  }

  void selectKursi(int indexKursiTerpilih) {
    reset0();
    if (gerbong[indexGerbong.value][indexKursiTerpilih]["status"] ==
        "available") {
      gerbong[indexGerbong.value][indexKursiTerpilih]
          .update("status", (value) => "selected");
    } else if (gerbong[indexGerbong.value][indexKursiTerpilih]["status"] ==
        "selected") {
      gerbong[indexGerbong.value][indexKursiTerpilih]
          .update("status", (value) => "available");
    }

    gerbong.refresh();
  }

  void reset0() {
    gerbong[indexGerbong.value].forEach((element) {
      if (element["status"] == "selected") {
        element.update("status", (value) => "available");
      }
    });
  }

  var gerbong = List.generate(
      6,
      (indexG) => List<Map<String, dynamic>>.generate(80, (indexK) {
            if (indexG == 0) {
              if (indexK >= 4 && indexK <= 5 || indexK >= 8 && indexK <= 9) {
                return {
                  "id": "ID-${indexG + 1}-${indexK + 1}",
                  "status": "occupied",
                };
              } else {
                return {
                  "id": "ID-${indexG + 1}-${indexK + 1}",
                  "status": "available",
                };
              }
            } else if (indexG == 1) {
              if (indexK >= 14 && indexK <= 15 ||
                  indexK >= 18 && indexK <= 19) {
                return {
                  "id": "ID-${indexG + 1}-${indexK + 1}",
                  "status": "occupied",
                };
              } else {
                return {
                  "id": "ID-${indexG + 1}-${indexK + 1}",
                  "status": "available",
                };
              }
            } else {
              return {
                "id": "ID-${indexG + 1}-${indexK + 1}",
                "status": "available",
              };
            }
          })).obs;
}
