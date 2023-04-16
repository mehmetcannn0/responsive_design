import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Text("D E S K T O P"),
          centerTitle: true,
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    //AspectRatio. Child widget'ının yüksekliğini ve genişliğini oran olarak
                    // belirleyebileceğiniz bir widget'dır.
                    child: AspectRatio(
                      aspectRatio: 16 / 5,
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                color: Colors.deepPurple[300],
              ),
            )
          ],
        ),
      ),
    );
  }
}
