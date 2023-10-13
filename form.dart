import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  bool isFullNameRelevant = true;
  bool isEmailRelevant = true;
  bool isPhoneNumberRelevant = true;
  bool isPersonalIdRelevant = true;
  bool isAddressRelevant = true;
  bool isDateRelevant = true;

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
        buildTextFieldWithLabel(
            'Full Name', 'Enter full name', isFullNameRelevant),
        buildTextFieldWithLabel('Email', 'Enter your email', isEmailRelevant),
        buildPhoneNumberWithVerification('Phone Number', 'Enter phone number',
            'Verify', isPhoneNumberRelevant),
        buildTextFieldWithLabel(
            'Personal id number', 'value', isPersonalIdRelevant),
        buildTextFieldWithLabel(
            'Address', 'Enter your text here', isAddressRelevant),
        buildDateFieldWithCalendar(
            'Choose a Date', 'Select a date', isDateRelevant),
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

Widget buildTextFieldWithLabel(
    String labelText, String hintText, bool isRelevant) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Checkbox(
            value: isRelevant,
            onChanged: (value) {
              // Update the relevant status
              // You can add logic here to handle changes
            },
          ),
          Text(
            labelText,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
      if (isRelevant)
        Column(
          children: [
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
        ),
    ],
  );
}

Widget buildPhoneNumberWithVerification(String labelText, String hintText,
    String verificationHintText, bool isRelevant) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Checkbox(
            value: isRelevant,
            onChanged: (value) {
              // Update the relevant status
              // You can add logic here to handle changes
            },
          ),
          Text(
            labelText,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
      if (isRelevant)
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
        ),
    ],
  );
}

Widget buildDateFieldWithCalendar(
    String labelText, String hintText, bool isRelevant) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Checkbox(
            value: isRelevant,
            onChanged: (value) {
              // Update the relevant status
              // You can add logic here to handle changes
            },
          ),
          Text(
            labelText,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
      if (isRelevant)
        InkWell(
          onTap: () {
            // Add logic to display the calendar
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
