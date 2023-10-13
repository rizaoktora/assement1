import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PERSOAL FORM',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        buildTextFieldWithLabel('Full Name', 'Enter full name'),
        buildTextFieldWithLabel('Email', 'Enter your email'),
        buildPhoneNumberWithVerification(
            'Phone Number', 'Enter phone number', 'Verify'),
        buildTextFieldWithLabel('Personal id number', 'value'),
        buildTextFieldWithLabel('Address', 'Enter your text here'),
        buildDateFieldWithCalendar('Choose a Date', 'Select a date'),
        SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Add logic to send data
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              textStyle: TextStyle(fontSize: 20),
            ),
            child: Text('Submit'),
          ),
        ),
      ],
    );
  }
}

Widget buildTextFieldWithLabel(String labelText, String hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        labelText,
        style: TextStyle(fontSize: 14),
      ),
      SizedBox(height: 4),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
      ),
      SizedBox(height: 16),
    ],
  );
}

Widget buildPhoneNumberWithVerification(
    String labelText, String hintText, String verificationHintText) {
  return Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelText,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 4),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(width: 16),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 4),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: verificationHintText,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildDateFieldWithCalendar(String labelText, String hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        labelText,
        style: TextStyle(fontSize: 14),
      ),
      SizedBox(height: 4),
      InkWell(
        onTap: () {
          // Tambahkan logika untuk menampilkan kalender
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.calendar_today),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
