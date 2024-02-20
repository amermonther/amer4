import 'package:flutter/material.dart';



class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => _homepage();
}

class _homepage extends State<homepage> {
  int i = 0;
  bool amer = false;
  String? frinds;
  bool ameer = false;
  bool ahed = false;
  bool ammar = false;
  bool majd = false;
  bool laith = false;
  TextEditingController username = TextEditingController();
  String? textval;
  GlobalKey<FormState> formstat =GlobalKey();
  String? name ;
  String? phone ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: FloatingActionButton(
              child: Icon(
                Icons.arrow_upward_outlined,
              ),
              onPressed: () {
                print("object");
              },
            ),
            appBar: AppBar(
              title: const Text(
                " ",
                style: TextStyle(
                  height: 4,
                ),
              ),
            ),
            body: Container(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: MaterialButton(
                          color: Colors.blue,
                          padding: EdgeInsets.all(10),
                          textColor: Colors.white,
                          onLongPress: () {
                            print("ameer");
                          },
                          onPressed: () {
                            print("amer");
                          },
                          child: Text("amer"),
                        ),
                      ),
                      Container(
                        child: IconButton(
                            color: Colors.blue,
                            padding: EdgeInsets.all(20),
                            onPressed: () {
                              print("amer");
                            },
                            icon: Icon(Icons.person)),
                      ),
                      Container(
                        child: Switch(
                            activeColor: Colors.green,
                            inactiveThumbColor: Colors.black,
                            inactiveTrackColor: Colors.grey,
                            value: amer,
                            onChanged: (val) {
                              setState(() {
                                amer = val;
                              });
                            }),
                      ),
                      Container(
                        width: 300,
                        color: Colors.red,
                        child: SwitchListTile(
                            title: Text("hi"),
                            inactiveThumbColor: Colors.black,
                            value: ameer,
                            onChanged: (val) {
                              setState(() {
                                ameer = val;
                              });
                            }),
                      ),
                      RadioListTile(
                          activeColor: Colors.blue,
                          tileColor: Colors.grey,
                          contentPadding: EdgeInsets.all(30),
                          title: Text("ameer"),
                          value: "ameer",
                          groupValue: frinds,
                          onChanged: (val) {
                            setState(() {
                              frinds = val;
                            });
                          }),
                      RadioListTile(
                          title: Text("amer"),
                          value: "amer",
                          groupValue: frinds,
                          onChanged: (val) {
                            setState(() {
                              frinds = val;
                            });
                          }),
                      RadioListTile(
                          title: Text("ahed"),
                          value: "ahed",
                          groupValue: frinds,
                          onChanged: (val) {
                            setState(() {
                              frinds = val;
                            });
                          }),
                      CheckboxListTile(
                          title: Text("ammar"),
                          value: ammar,
                          onChanged: (val) {
                            setState(() {
                              ammar = val!;
                            });
                          }),
                      CheckboxListTile(
                          title: Text("laith"),
                          value: laith,
                          onChanged: (val) {
                            setState(() {
                              laith = val!;
                            });
                          }),
                      CheckboxListTile(
                          title: Text("majd"),
                          value: majd,
                          onChanged: (val) {
                            setState(() {
                              majd = val!;
                            });
                          }),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(bottom: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "user name",
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text(
                                "email",
                                style: TextStyle(color: Colors.blue),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.padding),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixText: "last name",
                              fillColor: Colors.grey[300],
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(bottom: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              enabled: true,
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(20)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green)),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(bottom: 10),
                        child: TextField(
                          maxLength: 200,
                          maxLines: 3,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(bottom: 10),
                        child: TextField(
                          controller: username,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.blue,
                        onPressed: () {
                          print(username);
                        },
                        child: Text(
                          "print",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(bottom: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onChanged: (val) {
                            setState(() {
                              textval = val;
                            });
                          },
                        ),
                      ),
                      Text("$textval"),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(bottom: 10),
                        child: Form(
                          key: formstat,
                          child: TextFormField(
                            
                            onSaved: (val){
                              name =val;
                            },
                            validator: (value){
                              if(value!.isEmpty){
                                return "error : The field may not be empty";
                              }else if(value.length<5){
                                return "eroor : The name may not be less than three letters";
                              }else if(value.length>10){
                                return "error : The name may not be more than ten letters";
                              }
                            },
                            decoration: InputDecoration(
                              labelText: "user name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                              )
                            ),
                          ),
                        ),
                      ),

                      
                      MaterialButton(
                        color: Colors.blue,

                        onPressed: (){
                          if(formstat.currentState!.validate()){
                            formstat.currentState!.save();
                            print("$name");
                            print("valid");
                          }else{
                            print("not valid");
                          }
                      },
                      child: Text("valid"),
                      )
                    ],
                  ),
                ))));
  }
}
