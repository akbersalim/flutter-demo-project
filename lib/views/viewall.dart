import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  ViewAll(this.name,this.pass);
  var name,pass;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ViewBody()),
    );
  }
}

class ViewBody extends StatelessWidget {
  var data = [
    {"name": "Reuel", "age": "21", "rollno": 3, "paidstatus": true},
    {"name": "Rahul", "age": "23", "rollno": 4, "paidstatus": false},
    {"name": "Akhil", "age": "30", "rollno": 5, "paidstatus": true},
    {"name": "Keyser", "age": "25", "rollno": 6, "paidstatus": false},
    {"name": "Kate", "age": "23", "rollno": 7, "paidstatus": true},
    {"name": "Patrick", "age": "27", "rollno": 8, "paidstatus": false},
    {"name": "Jane", "age": "25", "rollno": 9, "paidstatus": true},
    {"name": "Mob", "age": "21", "rollno": 10, "paidstatus": false},
    {"name": "Bryan", "age": "25", "rollno": 11, "paidstatus": true},
    {"name": "Kim", "age": "25", "rollno": 12, "paidstatus": false},
    {"name": "Jim", "age": "26", "rollno": 13, "paidstatus": true},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3.0,
                    child: ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        size: 40.0,
                      ),
                      trailing: data[index]["paidstatus"]
                          ? FlatButton(child: Text("Paid"))
                          : FlatButton(
                          onPressed: () {
                            print("Clicked");
                          },
                          child: Text("Pay Now")),
                      title: Text(
                        "Name: " + data[index]["name"],
                        style: TextStyle(color: Colors.purple),
                      ),
                      subtitle: Text("Age: " +
                          data[index]["age"].toString() +
                          "\n" +
                          "Roll No: " +
                          data[index]["rollno"].toString()),
                    ),
                  );
                },
              ));
  }
}