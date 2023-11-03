

import 'package:flutter/material.dart';
import 'package:trial_app/pages/login_page.dart';


class SignUp_Page extends StatefulWidget {
  const SignUp_Page({super.key});

  @override
  _SignUp_PageState createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
  bool? checked = false;
  String dropdownValue = 'Select College';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //ye appbar for that back button on the top
      appBar: AppBar(
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: const Icon(Icons.arrow_back),
          color: const Color.fromARGB(255, 240, 18, 18),
        ),
        backgroundColor: const Color.fromARGB(0, 248, 247, 247),
        toolbarHeight: 40,
        elevation: 0,
      ),

      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 243, 240, 240),
      body: SingleChildScrollView(
          child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          //ye for logo GDSC
          Center(
            child: Container(
        
              height: 90,
              width: 90,
              alignment: Alignment.center,
              child: Image.asset('lib/images/logo1.png'),
            ),
          ),
      
          //ye for text GDSC MSIT
          const Text(
            '   GDSC MSIT',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),




//NOW FROM HERE OUR MAIN SIGN UP DETAILS GET STARTED
          
          const SizedBox(height: 30),

          //FOR first name
          Container(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: TextField(
              style: const TextStyle(
                fontSize: 16,
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                fillColor: Colors.blue.shade50,
                filled: true,
                hintText: 'First Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),
          //FOR Second Name
          Container(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: TextField(
              style: const TextStyle(
                fontSize: 16,
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                fillColor: Colors.blue.shade50,
                filled: true,
                hintText: 'Second Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          //FOR Email
          Container(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: TextField(
              style: const TextStyle(
                fontSize: 16,
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                fillColor: Colors.blue.shade50,
                filled: true,
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          //FOR Selecting Colleges
          Container(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.school),
                border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(10)),
               
                filled: true,
                fillColor: Colors.blue.shade50,
              ),
              dropdownColor: Colors.blue.shade50,
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Select College', 'MSIT', 'HITK', 'TINT', 'TMSL']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 16),
                  ),
                );
              }).toList(),
            ),
          ),

          

          
          const SizedBox(height: 15),

          //For Choosing a password with hidden text using obscure 
          Container(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: TextField(
              style: const TextStyle(
                fontSize: 16,
              ),
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.key_off),
                fillColor: Colors.blue.shade50,
                filled: true,
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          //FOR Reconfirmation of pass without hidden text
          Container(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: TextField(
              style: const TextStyle(
                fontSize: 16,
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.key),
                fillColor: Colors.blue.shade50,
                filled: true,
                hintText: 'Confirm password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),


          //For Accepting Newsletter
          Container(
            padding: const EdgeInsets.only(left: 50, right: 40),
            child: CheckboxListTile(
                title: const Text(
                  'Accept Newsletter',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
                value: checked,
                onChanged: (bool? newvalue) {
                  setState(() {
                    checked = newvalue;
                  });
                }),
          ),

          const SizedBox(
            height: 5,
          ),

//FROM HERE SIGN UP BUTTON IS THERE ONLY 
//I HAVE REDIRECTED TO LOGIN PAGE AGAIN SO AFTER CREATING ACCOUNT A USER CAN LOGIN 

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
             
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(255, 229, 59, 13),
                  ),

                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const LoginPage();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
