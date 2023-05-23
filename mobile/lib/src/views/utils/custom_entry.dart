import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CustomEntry extends StatefulWidget {
  final bool isPasswordEntry;
  final String label;
  final String labelText;
  final void Function(String) onSubmitted;
  final TextInputType keyboardType;
  final bool enabled;
  const CustomEntry({
    Key key,
    this.isPasswordEntry = false,
    @required this.label,
    @required this.labelText,
    this.keyboardType = TextInputType.text,
    this.onSubmitted,
    this.enabled = true,
  }) : super(key: key);

  @override
  _CustomEntryState createState() => _CustomEntryState();
}

class _CustomEntryState extends State<CustomEntry> {
  var _showPass;
  @override
  void initState() {
    _showPass = widget.isPasswordEntry;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 5,
              bottom: 10,
              top: 30,
            ),
            child: Text(widget.label,
                style: Theme.of(context).textTheme.headline5),
          ),
        ],
      ),
      Container(
        padding: EdgeInsets.only(left: !widget.enabled ? 15 : 0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: !widget.enabled ? 1.2 : 0,
            color: !widget.enabled ? Colors.grey.shade300 : Colors.transparent,
          ),
        ),
        child: TextField(
          enabled: widget.enabled,
          enableInteractiveSelection: widget.enabled,
          onChanged: (text) {
            widget.onSubmitted(text);
          },
          keyboardType: widget.keyboardType,
          onSubmitted: (text) {
            if (widget.onSubmitted != null) {
              widget.onSubmitted(text);
            }
          },
          obscureText: _showPass,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: widget.labelText,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelStyle: Theme.of(context).textTheme.bodyText1.merge(TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .color
                    .withOpacity(0.5))),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(
                color: Theme.of(context).buttonColor,
              ),
            ),
            suffixIcon: Padding(
                padding: EdgeInsets.all(10),
                child: widget.isPasswordEntry
                    ? IconButton(
                        icon: Icon(
                          _showPass
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded,
                        ),
                        onPressed: () => setState(() {
                          _showPass = !_showPass;
                        }),
                      )
                    : SizedBox(
                        height: 48,
                      )),
            //
            hintStyle: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),

            //
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(
                color: kprimaryColor,
                width: 1.5,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
