import 'package:flutter/material.dart';
import 'package:mail_app/components/side_menu.dart';
import 'package:mail_app/responsive.dart';
import 'package:mail_app/screens/email/email_screen.dart';
import 'package:mail_app/screens/main/components/list_of_emails.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
      mobile: ListOfEmails(),
      tablet: Row(
        children: [
          Expanded(
            flex: 6,
            child: ListOfEmails(),
          ),
          Expanded(
            flex: 9,
            child: EmailScreen(),
          ),
        ],
      ),
      desktop: Row(
        children: [
          Expanded(
            child: SideMenu(),
            flex: 2,
          ),
          Expanded(
            child: ListOfEmails(),
            flex: 3,
          ),
          Expanded(
            child: EmailScreen(),
            flex: 8,
          )
        ],
      ),
    ));
  }
}
