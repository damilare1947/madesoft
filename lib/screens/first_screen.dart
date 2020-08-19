import 'package:flutter/material.dart';
import 'package:madesoft/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool switching = true;
  bool switching1 = true;
  bool switching2 = true;
  bool switching3 = true;
  bool switching4 = true;
  bool switching5 = true;
  bool switching6 = true;
  bool switching7 = true;
  bool switching8 = true;
  bool switching9 = true;
  bool switching10 = true;
  bool switching11 = true;
  bool switching12 = true;
  bool switching13 = true;
  bool switching14 = true;
  bool switching15 = true;
  bool switching16 = true;
  bool switching17 = true;
  bool switching18 = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: <Widget>[
                Icon(Icons.keyboard_backspace, color: Color(0xffE0115F)),
                Spacer(),
                Icon(Icons.more_vert, color: Color(0xffE0115F))
              ],
            )),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    textTitle('Name of Staff'),
                    form(),
                    SizedBox(height: 20),
                    textTitle('Select Staff Location'),
                    textWidgetContainer('Select Staff Access Rights', false,
                        TextInputType.text),
                    textTitle2('Access to Sales Register'),
                  ],
                )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: Color(0xffFAF9F9),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    cardContainer1(
                        'Online Pos',
                        switching
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    cardContainer2(
                        'All Sales Report',
                        switching1
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    textTitle2('Access to Customers'),
                    cardContainer3(
                        'View Customers',
                        switching2
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    cardContainer4(
                        'Add/Edit Customers',
                        switching3
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    textTitle2('Access to Suppliers'),
                    cardContainer5(
                        'View Suppliers',
                        switching4
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    cardContainer6(
                        'Add/Edit Suppliers',
                        switching5
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    textTitle2('Access to Products and Services'),
                    cardContainer7(
                        'Access to Product List',
                        switching6
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    cardContainer8(
                        'Add Products',
                        switching7
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    cardContainer9(
                        'View Cost Price',
                        switching8
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    cardContainer10(
                        'Restock Product',
                        switching9
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    cardContainer11(
                        'Delete Product/Service',
                        switching10
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    textTitle2('Access to Staff'),
                    cardContainer12(
                        'Add/Edit Staff',
                        switching11
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    cardContainer13(
                        'View Staff',
                        switching12
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    textTitle2('Access to Reporting'),
                    cardContainer14(
                        'Sales Report',
                        switching13
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    cardContainer15(
                        'Inventory Report',
                        switching14
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    cardContainer16(
                        'Expense Report',
                        switching15
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    textTitle2('Access to Profile'),
                    cardContainer17(
                        'Update Profile Settings',
                        switching16
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    textTitle2('Access to Expense'),
                    cardContainer18(
                        'Add/Edit Expenses',
                        switching17
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    cardContainer19(
                        'View Expenses',
                        switching18
                            ? 'images/switch_on.png'
                            : 'images/switch_off.png'),
                    saveButton(width, height)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  saveButton(width, height) {
    return Container(
        height: height * .069,
        width: width * .368,
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
            //color: Color(0xFF18C5D9),
            ),
        //  alignment: Alignment.center,
        child: RaisedButton(
          color: Color(0xffE0115F),
          child: Text(
            'Save',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(SecondScreen.routeName);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
  }

  textTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xffBEC2CE),
          fontSize: 17,
        ),
      ),
    );
  }

  textTitle2(String title) {
    return Container(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Text(
          title,
          style: TextStyle(
            color: Color(0xff0E0E0F),
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  cardContainer1(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching) {
          setState(() {
            switching = false;
          });
        } else {
          setState(() {
            switching = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer2(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching1) {
          setState(() {
            switching1 = false;
          });
        } else {
          setState(() {
            switching1 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer3(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching2) {
          setState(() {
            switching2 = false;
          });
        } else {
          setState(() {
            switching2 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer4(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching3) {
          setState(() {
            switching3 = false;
          });
        } else {
          setState(() {
            switching3 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer5(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching4) {
          setState(() {
            switching4 = false;
          });
        } else {
          setState(() {
            switching4 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer6(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching5) {
          setState(() {
            switching5 = false;
          });
        } else {
          setState(() {
            switching5 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer7(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching6) {
          setState(() {
            switching6 = false;
          });
        } else {
          setState(() {
            switching6 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer8(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching7) {
          setState(() {
            switching7 = false;
          });
        } else {
          setState(() {
            switching7 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer9(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching8) {
          setState(() {
            switching8 = false;
          });
        } else {
          setState(() {
            switching8 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer10(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching9) {
          setState(() {
            switching9 = false;
          });
        } else {
          setState(() {
            switching9 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer11(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching10) {
          setState(() {
            switching10 = false;
          });
        } else {
          setState(() {
            switching10 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer12(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching11) {
          setState(() {
            switching11 = false;
          });
        } else {
          setState(() {
            switching11 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer13(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching12) {
          setState(() {
            switching12 = false;
          });
        } else {
          setState(() {
            switching12 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer14(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching13) {
          setState(() {
            switching13 = false;
          });
        } else {
          setState(() {
            switching13 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer15(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching14) {
          setState(() {
            switching14 = false;
          });
        } else {
          setState(() {
            switching14 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer16(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching15) {
          setState(() {
            switching15 = false;
          });
        } else {
          setState(() {
            switching15 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer17(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching16) {
          setState(() {
            switching16 = false;
          });
        } else {
          setState(() {
            switching16 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer18(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching17) {
          setState(() {
            switching17 = false;
          });
        } else {
          setState(() {
            switching17 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  cardContainer19(String text, String image) {
    return GestureDetector(
      onTap: () {
        if (switching18) {
          setState(() {
            switching18 = false;
          });
        } else {
          setState(() {
            switching18 = true;
          });
        }
      },
      child: Card(
        margin: EdgeInsets.only(top: 10),
        shadowColor: Colors.grey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17),
              ),
              Spacer(),
              Image.asset(image, width: 70, height: 70)
            ],
          ),
        ),
      ),
    );
  }

  form() {
    return Form(
        //key: _form,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        textWidgetContainer('Email', false, TextInputType.text),
        textWidgetContainer('Address', false, TextInputType.text),
        textWidgetContainer('PhoneNo', false, TextInputType.number),
        textWidgetContainer('Password', true, TextInputType.text),
        textWidgetContainer('StaffImage', false, TextInputType.text),
        selectButton()
      ],
    ));
  }

  Container textWidgetContainer(
      String text, bool obsecure, TextInputType keyboardType) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            obscureText: obsecure,
            decoration: InputDecoration(),
            textInputAction: TextInputAction.next,
            keyboardType: keyboardType,
            // onFieldSubmitted: (_) {},
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(text,
                style: TextStyle(color: Color(0xffBEC2CE), fontSize: 17)),
          )
        ],
      ),
    );
  }

  selectButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 150.0,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Color(0xffE0115F), width: 2),
        ),
        child: Text(
          'Select File',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0, color: Color(0xff6619EA)),
        ),
      ),
    );
  }
}
