import 'package:api/controllers/amiibo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final amiiboFindController = Get.find<AmiiboControlles>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('AMIIBO API'),
        backgroundColor: Colors.black,
      ),
      body: GetBuilder<AmiiboControlles>(
        builder: (amibocontroller) {
          return GridView.builder(
            itemCount: amibocontroller.listAmiibos.length,
            itemBuilder: (contex, i) {
              final amiibo = amibocontroller.listAmiibos[i];
              return
                  Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Image(image: NetworkImage(amiibo.image!),width: 100,),
                        SizedBox(height:10),
                        Text(amiibo.name!),
                        Text(amiibo.level!)
                      ],
                      
                    ),
                    );
              
            },
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            amiiboFindController.obtenerAmiibos();
          },
          backgroundColor: Colors.lightBlueAccent,
          child: const Icon(Icons.refresh_outlined)),
    );
  }
}
