import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pilih_kursi_controller.dart';

class PilihKursiView extends GetView<PilihKursiController> {
  const PilihKursiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/bg.png"))),
          ),
          Column(
            children: [
              //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
              Container(
                //Master Container1
                height: 100,
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Please select\nyour seat",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "Bus Tingkat",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "NoPol: XYZ",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
              Container(
                  //Master Container2
                  height: 90,
                  //color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ItemStatus(
                        status: "Available",
                        color: Colors.white,
                      ),
                      ItemStatus(
                        status: "Occupied",
                        color: Colors.amber,
                      ),
                      ItemStatus(
                        status: "Selected",
                        color: Colors.blue,
                      ),
                    ],
                  )),

              // SizedBox(
              //   height: 20,
              // ),

              //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
              Expanded(
                child: Container(
                  //Master Container3
                  height: 500,
                  //color: Colors.green,
                  decoration: const BoxDecoration(
                      //color: Colors.green,
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
                  child: Column(
                    children: [
                      const SizedBox(
                        //BARIS ABCD AKAN TURUN KEBAWAH, karena column diatasnya
                        height: 3,
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25)),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 10),
                          const Text(
                            "DECK",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const SizedBox(
                                  width: 6,
                                ),
                                //.......................................
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 75,
                                  height: 75,
                                  //color: Colors.amber,
                                  child: const Center(
                                    child: Text(
                                      "A",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 75,
                                  height: 75,
                                  //color: Colors.amber,
                                  child: const Center(
                                    child: Text(
                                      "B",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 75,
                                  height: 75,
                                  //color: Colors.amber,
                                  child: const Center(
                                    child: Text(
                                      "C",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 75,
                                  height: 75,
                                  //color: Colors.amber,
                                  child: const Center(
                                    child: Text(
                                      "D",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              //CONTAINER DECK / GERBONG
                              width: 70,
                              //height: 150,
                              //color: Colors.amber,
                              child: SingleChildScrollView(
                                child: Obx(
                                  () => Column(
                                      children: List.generate(
                                    //4,
                                    controller.gerbong.length,
                                    (index) => GestureDetector(
                                      onTap: () =>
                                          controller.gantiGerbong(index),
                                      child: Container(
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black38),
                                              //color: Colors.grey, //DECS COLOR
                                              color: controller
                                                          .indexGerbong.value ==
                                                      index
                                                  ? Colors.green
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          width: 50,
                                          height: 150,
                                          //color: Colors.amber,
                                          child: Center(
                                              child: Text("${index + 1}"))),
                                    ),
                                  )),
                                ),
                              ),
                            ),

                            //+++++++++++++++++++++======================================

                            Expanded(
                              child: Container(
                                //CONTAINER KURSI
                                //height: 150,
                                //color: Colors.teal,
                                child: Obx(() => GridView.builder(
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10,
                                          ),
                                          itemCount: controller
                                              .gerbong[
                                                  controller.indexGerbong.value]
                                              .length,
                                          itemBuilder: (context, index) =>
                                              GestureDetector(
                                            onTap: () =>
                                                controller.selectKursi(index),
                                            child: Container(
                                              width: 40,
                                              height: 40,
                                              // child: Center(
                                              //     child: Text(e["status"])),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black38),
                                                //color: Colors.grey,
                                                color: controller.gerbong[
                                                                controller
                                                                    .indexGerbong
                                                                    .value]
                                                            [index]["status"] ==
                                                        "available"
                                                    ? Colors.white
                                                    : controller.gerbong[controller
                                                                    .indexGerbong
                                                                    .value][index]
                                                                ["status"] ==
                                                            "occupied"
                                                        ? Colors.amber
                                                        : Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                        )
                                    // .toList()),
                                    ),
                              ),
                            ),
                            //)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
              ),

              Container(
                //Master Container4
                height: 100,
                ////color: Colors.brown,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "E N T E R",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 109, 6, 212),
                        fixedSize: Size(Get.width * 0.5, 50)),
                  ),
                ),
              ),
              //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            ],
          )
        ],
      ),
    );
  }
}

class ItemStatus extends StatelessWidget {
  const ItemStatus({
    super.key,
    required this.status,
    required this.color,
  });
  final String status;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              //color: Colors.amber,
              color: color,
              borderRadius: BorderRadius.circular(5)),
          width: 25,
          height: 25,
          padding: EdgeInsets.symmetric(horizontal: 25),

          //color: Colors.amber,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
            //"data"
            status),
      ],
    );
  }
}
