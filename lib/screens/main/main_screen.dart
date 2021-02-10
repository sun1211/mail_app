import 'package:flutter/material.dart';
import 'package:mail_app/components/side_menu.dart';
import 'package:mail_app/screens/email/email_screen.dart';
import 'package:mail_app/screens/main/components/list_of_emails.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: SideMenu(),
          ),
          Expanded(
            child: ListOfEmails(),
          ),
          Expanded(
            child: EmailScreen(),
          )
        ],
      ),
    );
  }
}
