import 'package:flutter/material.dart';
import 'package:flutter_second_application/screen/MyDetails.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var productName, productDetails, checkboxdetail;
  bool? checkbox = false;
  bool? checkboxlist = false;

  //
  // void updateText(val){
  //   setState(() {
  //     productName = val;
  //   });
  // }

  @override
  void dispose() {
    super.dispose();
    productName.dispose();
    productDetails.dispose();
  } //

  final productController1 = TextEditingController();
  final productController = TextEditingController();

  //
  //
  // @override
  // void initState() {
  //   super.initState();
  //   productController.addListener(updateText as VoidCallback);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FORM"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "PRODUCT DETAILS",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Add your product details below",
              style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: productController,
                onChanged: (val) {
                  // updateText(val);
                },
                decoration: InputDecoration(
                  labelText: "Product Name",
                  prefixIcon: Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: productController1,
                onChanged: (val) {
                  //updateText(val);
                },
                decoration: InputDecoration(
                  labelText: "Product Details",
                  prefixIcon: Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            // Checkbox(
            //     tristate: true,
            //     value: checkbox,
            //     onChanged: (val) {
            //       setState(() {
            //         checkbox = val;
            //       });
            //     }),
            CheckboxListTile(
              tristate: true,
              title: Text("Premium Products"),
              value: checkboxlist,
              onChanged: (val) {
                setState(() {
                  checkboxlist = val;
                  if(checkboxlist==true) checkboxdetail="1";
                  else if(checkboxlist==false || checkboxlist==null) checkboxdetail="0";
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("Product Name = ${productController.text}"),
            // ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: mySubmitBtn(context),
            ),
          ],
        ),
      ),
    );
  }

  OutlinedButton mySubmitBtn(BuildContext context) {
    return OutlinedButton(
      child: Text(
        "submit form".toUpperCase(),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      style: OutlinedButton.styleFrom(minimumSize: Size(200, 50)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MyDetails(
            productName: productController.text,
            productDetails: productController1.text,
            checkboxdetails: checkboxdetail,
          );
        }));
      },
    );
  }
}
