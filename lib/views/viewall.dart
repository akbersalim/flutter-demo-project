import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  var data = [
    {
      "name": "Reuel",
      "age": "21",
      "rollno": 3,
      "paidstatus": true,
      "image":
          "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg"
    },
    {
      "name": "Rahul",
      "age": "23",
      "rollno": 4,
      "paidstatus": false,
      "image":
          "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg"
    },
    {
      "name": "Akhil",
      "age": "30",
      "rollno": 5,
      "paidstatus": true,
      "image":
          "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg"
    },
    {
      "name": "Keyser",
      "age": "25",
      "rollno": 6,
      "paidstatus": false,
      "image":
          "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg"
    },
    {
      "name": "Kate",
      "age": "23",
      "rollno": 7,
      "paidstatus": true,
      "image":
          "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg"
    },
    {
      "name": "Patrick",
      "age": "27",
      "rollno": 8,
      "paidstatus": false,
      "image":
          "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg"
    },
    {
      "name": "Jane",
      "age": "25",
      "rollno": 9,
      "paidstatus": true,
      "image":
          "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg"
    },
    {
      "name": "Mob",
      "age": "21",
      "rollno": 10,
      "paidstatus": false,
      "image":
          "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg"
    },
    {
      "name": "Bryan",
      "age": "25",
      "rollno": 11,
      "paidstatus": true,
      "image":
          "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg"
    },
    {
      "name": "Kim",
      "age": "25",
      "rollno": 12,
      "paidstatus": false,
      "image":
          "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg"
    },
    {
      "name": "Jim",
      "age": "26",
      "rollno": 13,
      "paidstatus": true,
      "image":
          "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
              child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3.0,
            child: ListTile(
              leading: ClipOval(
                child: Image(
                  image: NetworkImage(data[index]["image"]),
                ),
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
      ))),
    );
  }
}
