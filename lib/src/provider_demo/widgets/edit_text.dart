import 'package:flutter/material.dart';
import 'package:flutter_app/src/provider_demo/appstate.dart';
import 'package:provider/provider.dart';

class EditText extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return EditTestState();
  }
}

class EditTestState extends State<EditText> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context);
    return Container(
      margin: EdgeInsets.all(16.0),
      child: TextField(
        controller: _textEditingController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Some Text',
        ),
        onChanged: (text) => appState.setDisplayText(text),
        onSubmitted: (text) => appState.setDisplayText(text),
      ),
    );
  }
}
