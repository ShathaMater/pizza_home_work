import 'package:flutter/material.dart';
import 'dart:developer';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  int price = 0;
  bool val1 = true;
  bool val2 = false;
  bool val3 = false;
  bool val4= false;
  bool val5 = false;

  void incrementCounter() {
    setState(() {
      counter++;
      price +=100 ;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
      price -= 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              child: Image.network(
                "https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // width: double.infinity,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(20),
              //   border: Border.all(
              //     color: Colors.grey.shade300,
              //   ),
              //
              // ),
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "بيتزا بالخضار ",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  Text(
                    " بيتزا بالخضار مميزة  ",
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              SizedBox(
                                width: 30,
                                child: TextButton(
                                  onPressed: () {
                                    if (counter < 10) {
                                      incrementCounter();
                                    }
                                  },
                                  style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(10, 10)),
                                  ),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      color: Colors.blue.shade400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                (counter >= 10) ? "10" : ' $counter  ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: 30,
                                child: TextButton(
                                  onPressed: () {
                                    if (counter > 1) {
                                      decrementCounter();
                                    }
                                  },
                                  style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size(10, 10)),
                                  ),
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      color: Colors.blue.shade400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Spacer(),
                      Text(
                        'د.ا ',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                      Text(
                        ' $price  ',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              height: 52,
              thickness: 5,
              indent: 0,
              endIndent: 0,
              color: Colors.grey.withOpacity(.5),
            ),
            Text(
              " : اختيارك من الحجم (اختياري )",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 18),
            ),
            Text(
              " اختر من القائمة  ",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black45,
                  fontSize: 12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                  value: val1,
                  onChanged: (newValue) {
                    setState(() {
                      val1 = newValue!;

                    });
                  },
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                ),
                Spacer(),
                Text(
                  "صنف 1 ",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 3,
              indent: 2,
              endIndent: 2,
              color: Colors.grey.withOpacity(.5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                  value: val2,
                  onChanged: (newValue2) {
                    setState(() {
                      val2 = newValue2!;
                      if (val2) {
                        price += 9;
                      } else {
                        price -= 9;
                      }

                    });
                  },

                ),
                Text(
                  " (  9.00+) ",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black45,
                      fontSize: 12),
                ),
                Spacer(),
                Text(
                  "صنف 2 ",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),

              ],
            ),
            Divider(
              height: 20,
              thickness: 3,
              indent: 2,
              endIndent: 2,
              color: Colors.grey.withOpacity(.5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                  value: val3,
                  onChanged: (newValue3) {
                    setState(() {
                      val3 = newValue3!;
                      if (val3) {
                        price += 9;
                      } else {
                        price -= 9;
                      }

                    });
                  },
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                ),
                Text(
                  " (  9.00+) ",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black45,
                      fontSize: 12),
                ),
                Spacer(),
                Text(
                  "صنف 3 ",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 3,
              indent: 2,
              endIndent: 2,
              color: Colors.grey.withOpacity(.5),
            ),
            Text(
              " :اختيارك من الاضافات (اختياري ) ",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 18),
            ),
            Text(
              " اختر من القائمة  ",
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.grey,
                  fontSize: 12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                  value: val4,
                  onChanged: (newValue4) {
                    setState(() {
                      val4 = newValue4!;
                      if (val4) {
                        price += 9;
                      } else {
                        price -= 9;
                      }

                    });
                  },
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                ),

                Spacer(),
                Text(
                  "صنف 1 ",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 3,
              indent: 2,
              endIndent: 2,
              color: Colors.grey.withOpacity(.5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                  value: val5,
                  onChanged: (newValue5) {
                    setState(() {
                      val5 = newValue5!;
                      if (val5) {
                        price += 9;
                      } else {
                        price -= 9;
                      }

                    });
                  },
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                ),
                Text(
                  " (  9.00+) ",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black45,
                      fontSize: 12),
                ),
                Spacer(),
                Text(
                  "صنف 2 ",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 3,
              indent: 2,
              endIndent: 2,
              color: Colors.grey.withOpacity(.5),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue.withOpacity(.8)),
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size(double.infinity, 50)),
                  textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ' $price  ',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "اضافة للسلة",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
