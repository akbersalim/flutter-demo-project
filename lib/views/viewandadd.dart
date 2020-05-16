import 'package:flutter/material.dart';

class ViewandAdd extends StatelessWidget {
  ViewandAdd(this.name, this.pass);

  var name, pass;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SingleChildScrollView(child: MyBody())),
    );
  }
}
/*
home: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MBCET(name, pass)));
        },
        child: Scaffold(body: SingleChildScrollView(child: MyBody())),
      ),
    );
  }
}
 */

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  var name = [
    "Reuel",
    "Rahul",
    "Akhil",
    "Keyser",
    "Kate",
    "Patrick",
    "Jane",
    "Mob",
    "Bryan",
    "Kim",
    "Jim"
  ];
  var age = [21, 23, 30, 25, 23, 30, 27, 25, 21, 26, 25];
  var rollno = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  var paidstatus = [
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true
  ];
  var imag = [
    "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
    "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
    "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
    "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
    "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
    "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
    "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
    "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
    "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
    "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
    "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
  ];
  List _fee = ["not paid", "paid"];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _feestat;

  void initState() {
    _dropDownMenuItems = buildAndGetDropDownMenuItems(_fee);
    _feestat = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = List();
    for (String fruit in fruits) {
      items.add(DropdownMenuItem(value: fruit, child: Text(fruit)));
    }
    return items;
  }

  void changedDropDownItem(String selectedFruit) {
    setState(() {
      _feestat = selectedFruit;
    });
  }

  var a = 0;

  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    TextEditingController rnocontroller = TextEditingController();
    TextEditingController agecontroller = TextEditingController();
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                  ),
                  labelText: "Enter name ",
                  labelStyle: TextStyle(color: Colors.purple),
                  hintText: "Name:",
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.numberWithOptions(),
              controller: agecontroller,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                  ),
                  labelText: "Enter age ",
                  labelStyle: TextStyle(color: Colors.purple),
                  hintText: "Age:",
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.numberWithOptions(),
              controller: rnocontroller,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 2.0),
                  ),
                  labelText: "Enter roll no: ",
                  labelStyle: TextStyle(color: Colors.purple),
                  hintText: "Roll No:",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10.0,
            ),
            DropdownButton(
              value: _feestat,
              items: _dropDownMenuItems,
              onChanged: changedDropDownItem,
            ),
            MaterialButton(
              color: Colors.grey,
              focusColor: Colors.white,
              splashColor: Colors.purple,
              elevation: 10.0,
              highlightElevation: 2.0,
              height: 40.0,
              minWidth: 90.0,
              onPressed: () {
                var nam = namecontroller.text;
                var rno = rnocontroller.text;
                var ag = agecontroller.text;
                namecontroller.clear();
                rnocontroller.clear();
                agecontroller.clear();
                setState(() {
                  nam == "" ? name.add(""):name.add(nam.toString());
                  rno == "" ? rollno.add(int.parse("0")):rollno.add(int.parse(rno)) ;
                  ag == "" ?  age.add(int.parse("0")):age.add(int.parse(ag)) ;

                  if (_feestat == "paid")
                    paidstatus.add(false);
                  else
                    paidstatus.add(true);
                  imag.add(
                      "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg");
                });
              },
              child: Text(
                "ENTER",
                style: TextStyle(color: Colors.purple),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 360,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: rollno.length == null ? 0 : rollno.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        size: 50.0,
                      ),

                      /*ClipOval(
                        child: Image(
                          image: NetworkImage(imag[index]),
                          height: 40.0,
                        ),
                      ),*/
                      trailing: paidstatus[index]
                          ? FlatButton(child: Text("Paid"))
                          : MaterialButton(
                              color: Colors.purple,
                              colorBrightness: Brightness.dark,
                              elevation: 10.0,
                              highlightElevation: 1.0,
                              onPressed: () {
                                print("Clicked");
                                setState(() {
                                  paidstatus[index] = true;
                                });
                              },
                              child: Text("Pay Now")),
                      title: Text(
                        "Name: " + name[index],
                        style: TextStyle(color: Colors.purple),
                      ),
                      subtitle: Text("Age: " +
                          age[index].toString() +
                          "\n" +
                          "Roll No: " +
                          rollno[index].toString()),
                    ),
                  );
                },
              ),
            ),
          ]),
    );
  }
}
