import 'package:flutter/material.dart';

// ignore: camel_case_types
class examostad extends StatefulWidget {
  const examostad({super.key});

  @override
  State<examostad> createState() => _examostadState();
}

// ignore: camel_case_types
class _examostadState extends State<examostad> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: Text('Add Employee'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),

      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              //Instruction-01: Using TextFormsFeild
              //TextField-01: Name
              TextFormField(decoration: InputDecoration(labelText: 'Name')),
              SizedBox(height: 18),

              //TextField-02: Age
              TextFormField(
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 18),

              //textField-03: Salary
              TextFormField(
                decoration: InputDecoration(labelText: 'Salary'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 30),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      /*
                    we can use logic for name, age ,salary
                    as we learn from the module-08 class-02.
                    but the question does not require it
                    so that we only try to use the textfield form 
                    and Elevated button to create this UI
                    */
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                    textStyle: TextStyle(fontSize: 14),
                  ),
                  child: Text('Add Employee'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

