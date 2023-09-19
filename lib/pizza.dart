import 'dart:developer';

import 'package:flutter/material.dart';

class PizzaOrderScreen extends StatefulWidget {
  @override
  _PizzaOrderScreenState createState() => _PizzaOrderScreenState();
}

class _PizzaOrderScreenState extends State<PizzaOrderScreen> {
  double pizzaPrice = 0;
  double pizzaPrice2 = 0;
  double pizzaPrice3 = 0;
  double pizzaPrice4 = 0;
  double pizzaPrice5 = 0;
  double pizzaPrice6 = 0;
  double fialPrizza = 5.0;

  int number = 1;
  double totalPrice = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)),
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/9/91/Pizza-3007395.jpg',
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'بيتزا بالخضار ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),




              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'بيتزا بالخضار مميزة ',
                    style: TextStyle(color: Colors.black26, fontSize: 16),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 2),
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove, color: Colors.blue),
                            onPressed: () {
                              setState(() {
                                if (number > 0

                                ) {
                                  number--;
                                  fialPrizza -= 5;

                                  calculateTotalPrice();
                                }
                              });
                            },
                          ),
                          Text('$number'),
                          IconButton(
                            icon: Icon(Icons.add, color: Colors.blue),
                            onPressed: () {
                              setState(() {
                                number++;
                                fialPrizza += 5;
                                calculateTotalPrice();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('السعر : \$${totalPrice.toStringAsFixed(2)}'),
                  ),
                ],
              ),
              Divider(thickness: 6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'اختر حجم البيتزا:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'اختر من القائمة ',
                    style: TextStyle(color: Colors.black26, fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Checkbox(
                      value: pizzaPrice == 10.0 ? true : false,
                      onChanged: (bool? newValue) {
                        log('message=>${newValue}');
                        setState(() {
                          if (newValue!) {
                            pizzaPrice = 10.0;
                            totalPrice += 10.0;
                            fialPrizza += 10;
                            log('message ${pizzaPrice}');
                          } else {
                            pizzaPrice = 0;
                            totalPrice -= 10.0;
                            fialPrizza -= 10;
                            log('message ${pizzaPrice}');
                          }
                        });
                      },
                    ),
                    Spacer(),
                    Text('صغير (\$10)'),
                  ],
                ),
              ),
              Divider(
                height: 20,
                indent: 20,
                endIndent: 20,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Checkbox(
                      value: pizzaPrice2 == 20.0 ? true : false,
                      onChanged: (bool? newValue) {
                        setState(() {
                          if (newValue!) {
                            pizzaPrice2 = 20.0;
                            totalPrice += 20.0;
                            fialPrizza += 20.0;
                          } else {
                            totalPrice -= 20.0;
                            pizzaPrice2 = 0;
                            fialPrizza -= 20.0;
                          }
                        });
                      },
                    ),
                    Spacer(),
                    Text('وسط (\$20)'),
                  ],
                ),
              ),
              Divider(
                height: 20,
                indent: 20,
                endIndent: 20,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Checkbox(
                      value: pizzaPrice3 == 20.0 ? true : false,
                      onChanged: (bool? newValue) {
                        setState(() {
                          if (newValue!) {
                            pizzaPrice3 = 20.0;
                            fialPrizza += 20.0;

                            totalPrice += 20.0;
                          } else {
                            pizzaPrice3 = 0;
                            fialPrizza -= 20.0;

                            totalPrice -= 20.0;
                          }
                        });
                      },
                    ),
                    Spacer(),
                    Text('كبير (\$20)'),
                  ],
                ),
              ),
              Divider(thickness: 6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'اختر اضافات البيتزا:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'اختر من القائمة ',
                    style: TextStyle(color: Colors.black26, fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Checkbox(
                      value: pizzaPrice4 == 2.0 ? true : false,
                      onChanged: (bool? newValue) {
                        setState(() {
                          if (newValue!) {
                            pizzaPrice4 = 2.0;
                            totalPrice += 2.0;
                            fialPrizza += 2.0;
                          } else {
                            pizzaPrice4 = 0;
                            totalPrice -= 2.0;
                            fialPrizza -= 2.0;
                          }
                        });
                      },
                    ),
                    Spacer(),
                    Text('اضافة جبن (\$2)'),
                  ],
                ),
              ),
              Divider(
                height: 20,
                indent: 20,
                endIndent: 20,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Checkbox(
                      value: pizzaPrice5 == 3.0 ? true : false,
                      onChanged: (bool? newValue) {
                        setState(() {
                          if (newValue!) {
                            pizzaPrice5 = 3.0;
                            totalPrice += 3.0;
                            fialPrizza += 3.0;
                          } else {
                            totalPrice -= 3.0;
                            fialPrizza -= 3.0;

                            pizzaPrice5 = 0;
                          }
                        });
                      },
                    ),
                    Spacer(),
                    Text('اضافة على الحجم (\$3)'),
                  ],
                ),
              ),
              Divider(
                height: 20,
                indent: 20,
                endIndent: 20,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Checkbox(
                      value: pizzaPrice6 == 2.0 ? true : false,
                      onChanged: (bool? newValue) {
                        setState(() {
                          if (newValue!) {
                            pizzaPrice6 = 2.0;
                            totalPrice += 2.0;
                            fialPrizza += 2.0;
                          } else {
                            totalPrice -= 2.0;
                            pizzaPrice6 = 0;
                            fialPrizza -= 2.0;
                          }
                        });
                      },
                    ),
                    Spacer(),
                    Text('اضافة خضار (\$2)'),
                  ],
                ),
              ),
            ]),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black, blurRadius: 1, spreadRadius: 0),
              BoxShadow(color: Colors.white, blurRadius: 10, spreadRadius: 5),
            ]),
        child: Center(
          child: Container(
            height: 55,
            width: 350,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(' ${fialPrizza.toStringAsFixed(2)}'),
                  Spacer(),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("اضافة للسلة")),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
        ),
      ),
    );
  }

  void calculateTotalPrice() {
    setState(() {
      totalPrice = (pizzaPrice + (number * 5.0));
    });
  }
}
