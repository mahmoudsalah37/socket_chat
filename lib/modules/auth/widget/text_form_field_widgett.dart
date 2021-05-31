import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  TextFormFieldWidget(
      {this.obscure = false,
      this.textInputType = TextInputType.text,
      @required this.labelText,
      this.textEditingController});
  final TextInputType textInputType;
  final String labelText;
  final TextEditingController textEditingController;
  final bool obscure;
  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final FocusNode _focusNode = FocusNode();
  TextStyle _labelStyle = TextStyle();
  IconData _iconData = Icons.visibility_off;
  bool isObscure = false;

  @override
  void initState() {
    isObscure = widget.obscure;
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _labelStyle = Theme.of(context)
            .textTheme
            .headline4
            .copyWith(color: Colors.orange);
      } else {
        _labelStyle = Theme.of(context).textTheme.headline4;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextFormField(
        obscureText: isObscure,
        controller: widget.textEditingController,
        textInputAction: TextInputAction.next,
        keyboardType: widget.textInputType,
        validator: (v) {
          if (v.isEmpty) return 'Enter Data';

          return null;
        },
        decoration: InputDecoration(
            suffixIcon: widget.obscure
                ? InkWell(
                    child: Icon(_iconData),
                    onTap: () {
                      if (_iconData != Icons.visibility_off) {
                        _iconData = Icons.visibility_off;
                        isObscure = true;
                      } else {
                        _iconData = Icons.visibility;
                        isObscure = false;
                      }
                      setState(() {});
                    },
                  )
                : null,
            border: OutlineInputBorder(),
            labelText: widget.labelText ?? '',
            labelStyle: _labelStyle),
        style: Theme.of(context).textTheme.headline2,
        focusNode: _focusNode,
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    widget.textEditingController.dispose();
    super.dispose();
  }
}
