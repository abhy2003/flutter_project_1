import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Taskvalidation extends StatefulWidget {
  const Taskvalidation({super.key});

  @override
  State<Taskvalidation> createState() => _TaskvalidationState();
}

class _TaskvalidationState extends State<Taskvalidation> {
  bool _isObscured = true;
  final phonecontroller = TextEditingController();
  final addresscontroller = TextEditingController();
  final companyname = TextEditingController();
  final websitename = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  final registerKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: registerKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Phone field can't be empty";
                      }
                      String pattern = r'^[6-9]\d{9}$';
                      RegExp regex = RegExp(pattern);
                      if (!regex.hasMatch(value)) {
                        return "Enter valid phone number";
                      }
                      return null;
                    },
                    controller: phonecontroller,
                    decoration: InputDecoration(
                      label: Text("Phone Number"),
                      hintText: ("Enter phone number"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Address field can't be empty";
                      }
                      String pattern = r'^[a-zA-Z0-9\s,.-]+$';
                      RegExp regex = RegExp(pattern);
                      if (!regex.hasMatch(value)) {
                        return "Enter valid address";
                      }
                      return null;
                    },
                    controller: addresscontroller,
                    decoration: InputDecoration(
                      label: Text("Address"),
                      hintText: ("Enter address"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Company name field can't be empty";
                      }
                      String pattern = r'^[a-zA-Z0-9\s,.-]+$';
                      RegExp regex = RegExp(pattern);
                      if (!regex.hasMatch(value)) {
                        return "Enter valid Company Name";
                      }
                      return null;
                    },
                    controller: companyname,
                    decoration: InputDecoration(
                      label: Text("Company name"),
                      hintText: ("Enter company name"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter website';
                      }
                      String pattern =
                          r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([/\w \.-]*)*\/?$';
                      RegExp regex = RegExp(pattern);
                      if (!regex.hasMatch(value)) {
                        return 'Please enter a valid website';
                      }
                      return null;
                    },
                    controller: websitename,
                    decoration: InputDecoration(
                      label: Text("Website name"),
                      hintText: ("Enter website name"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email field can't be empty";
                      }
                      return null;
                    },
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: ("Enter email"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: passwordcontroller,
                    obscureText: _isObscured,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password field can't be empty";
                      }
                      String pattern =
                          r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])'
                          r'[A-Za-z\d@$!%*?&]{8,}$';
                      RegExp regex = RegExp(pattern);
                      if (!regex.hasMatch(value)) {
                        return "Password must be at least 8 characters long and"
                            " include a mix of uppercase, lowercase, digits, and special characters";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: Text("Password"),
                      hintText: ("Enter password"),
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscured ? Icons.visibility : Icons.visibility_off_outlined,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscured = !_isObscured;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 100.w,
                    height: 50.h,
                    child: TextButton(
                      onPressed: () {
                        if (registerKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Successfully registered"),
                            ),
                          );
                        }
                      },
                      child: Text("Register"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
