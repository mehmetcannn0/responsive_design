import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.deepPurple[200],
          appBar: AppBar(
            title: Text("M O B I L E"),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  //AspectRatio. Child widget'ının yüksekliğini ve genişliğini oran olarak
                  // belirleyebileceğiniz bir widget'dır.
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      height: 250,
                      color: Colors.deepPurple[400],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.deepPurple[300],
                          height: 120,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
