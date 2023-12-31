import 'package:flutter/material.dart';
import 'package:flutter_second_application/screen/MyDetails.dart';

import '../models/ProductModel.dart';
import '/widgets/MyButton.dart';

enum ProductType { DOWNLOADABLE, DELIVERABLE }

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var productName, productDetails, checkboxdetail;
  bool? checkbox = false;
  bool? checkboxlist = false;

  final dropdownlist = ["S", "M", "L", "XL", "XXL", "XXXL"];
  String? selectedval;

  final formkey = GlobalKey<FormState>();

  _MyFormState() {
    selectedval = dropdownlist[0];
  }

  ProductType? prodType;

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

            Form(
                key: formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please enter some text";
                          }else null;
                        },
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
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please enter some text";
                          }else null;
                        },
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
                          if (checkboxlist == true)
                            checkboxdetail = "1";
                          else if (checkboxlist == false || checkboxlist == null)
                            checkboxdetail = "0";
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile<ProductType>(
                              value: ProductType.DOWNLOADABLE,
                              groupValue: prodType,
                              dense: true,
                              tileColor: Colors.indigo.shade50,
                              title: Text(ProductType.DOWNLOADABLE.name.toLowerCase()),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              onChanged: (val) {
                                setState(() {
                                  prodType = val;
                                });
                              }),
                        ),
                        SizedBox(width: 5.0),
                        Expanded(
                          child: RadioListTile<ProductType>(
                              value: ProductType.DELIVERABLE,
                              title: Text(ProductType.DELIVERABLE.name.toLowerCase()),
                              groupValue: prodType,
                              dense: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              tileColor: Colors.indigo.shade50,
                              onChanged: (val) {
                                setState(() {
                                  prodType = val;
                                });
                              }),
                        ),
                      ],
                    ),
                    // DropdownButton(
                    //   value: selectedval,
                    //     items: dropdownlist.map(
                    //             (e) =>  DropdownMenuItem(child : Text(e),value : e)
                    //     ).toList(),
                    //     onChanged: (val) {
                    //       setState(() {
                    //         selectedval = val;
                    //       });
                    //     }),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: DropdownButtonFormField(
                        value: selectedval,
                        items: dropdownlist
                            .map((e) => DropdownMenuItem(child: Text(e), value: e))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            selectedval = val;
                          });
                        },
                        icon: Icon(Icons.arrow_drop_down_circle),
                        decoration: InputDecoration(
                          label: Text("Size"),
                          prefixIcon: Icon(Icons.accessibility_new_rounded),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text("Product Name = ${productController.text}"),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: MyButton(onPress: () {
                        if(formkey.currentState!.validate()){

                          ProductDetails product = ProductDetails();

                          product.productname = productController.text;
                          product.productdetails = productController1.text;
                          product.isTopproduct = checkboxlist!;
                          //product.producttype = prodType;
                          product.productsize = selectedval!;

                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MyDetails(productname : product.productname,
                              productdetails: product.productdetails,);
                          }));
                        }
                      },),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
