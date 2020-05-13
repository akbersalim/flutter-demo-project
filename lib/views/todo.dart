import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  ToDoApp(this.name, this.pass);

  var name, pass;

  @override
  _ToDoAppState createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  TextEditingController taskcontroller = TextEditingController();
  var mytask = ["Eat", "Sleep"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Enter Task", border: OutlineInputBorder()),
                controller: taskcontroller,
              ),
              RaisedButton(
                onPressed: () {
                  var task = taskcontroller.text;
                  taskcontroller.clear();
                  setState(() {
                    mytask.add(task);
                  });
                },
                child: Text(
                  "ADD",
                  style: TextStyle(color: Colors.purple),
                ),
              ),
              ListView.builder(
                  itemCount: mytask.length == null ? 0 : mytask.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.add_location,
                          color: Colors.purple,
                        ),
                        title: Text(mytask[index].toString()),
                        trailing: GestureDetector(
                            onTap: () {
                              setState(() {
                                mytask.removeAt(index);
                              });
                            },
                            child: Icon(
                              Icons.delete,
                              color: Colors.purple,
                            )),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
