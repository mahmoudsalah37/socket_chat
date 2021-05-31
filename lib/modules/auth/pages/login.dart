import 'package:flutter/material.dart';
import 'package:socket_chat/modules/auth/chat/pages/chat_page.dart';
import '../models/login_model.dart';
import '../widget/text_form_field_widgett.dart';

class LoginPage extends StatelessWidget {
  LoginPage();
  final userNameTEC = TextEditingController(text: ''),
      groupNameTEC = TextEditingController(text: '.UserEvent');
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormFieldWidget(
                textEditingController: userNameTEC,
                labelText: 'User Name',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 8),
              TextFormFieldWidget(
                textEditingController: groupNameTEC,
                labelText: 'Event Name',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15),
              TextButton(
                onPressed: () async {
                  if (formKey.currentState.validate()) {
                    LoginModel.userName = userNameTEC.text;
                    LoginModel.groupName = groupNameTEC.text;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ChatPage(),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
