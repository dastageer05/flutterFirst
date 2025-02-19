import 'package:flutter/material.dart';
import 'showdata.dart';

class login_pg extends StatefulWidget {
  const login_pg({super.key});

  @override
  State<login_pg> createState() => _login_pgState();
}

class _login_pgState extends State<login_pg> {
  final TextEditingController txtName = TextEditingController();
  final TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/del.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 40),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 40,
                      width: 250,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.local_dining,
                              color: Colors.amber,
                            ),
                          ),
                          Text(
                            "Login Detail",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 40),
                  child: Card(
                    elevation: 4,
                    shadowColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 40,
                        width: 250,
                        child: TextField(
                          controller: txtName,
                          maxLength: 30,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.person),
                            labelText: "Enter User Name",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 40, bottom: 20),
                  child: Card(
                    elevation: 4,
                    shadowColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 40,
                        width: 250,
                        child: TextField(
                          controller: txtpassword,
                          maxLength: 30,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.password),
                            labelText: "Enter Password",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShowData(
                              fname: txtName.text,
                              pass: txtpassword.text,
                            ),
                          ),
                        );
                      },
                      child: Text("Login"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
