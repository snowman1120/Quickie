import 'package:flutter/material.dart';

class QuantityButtonsVertical extends StatefulWidget {
  const QuantityButtonsVertical({
    Key key,
    @required this.decrement,
    @required this.increment,
    @required this.quantity,
  }) : super(key: key);

  final Function decrement;
  final Function increment;
  final double quantity;
  @override
  _QuantityState createState() => _QuantityState();
}

class _QuantityState extends State<QuantityButtonsVertical> {
  bool _secondSelected = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _RoundedButton(
          icon: widget.quantity == 1 ? Icons.delete : Icons.remove_rounded,
          selected: !_secondSelected,
          onTap: () {
            setState(
              () {
                if (_secondSelected) {
                  changeSelected();
                }
                if (widget.quantity > 0) {
                  widget.decrement();
                }
              },
            );
          },
        ),

        SizedBox(
          height: 30,
        ),
        // SizedBox(
        //   height: 5,
        // ),

        // Text(
        //   '  ${widget.quantity.toString().length < 2 ? 0 : ''}${widget.quantity.round()}  ',
        //   style: TextStyle(
        //     fontWeight: FontWeight.w600,
        //     fontSize: 15,
        //   ),
        // ),
        // SizedBox(
        //   height: 5,
        // ),
        _RoundedButton(
          selected: _secondSelected,
          icon: Icons.add_rounded,
          onTap: () {
            setState(() {
              if (!_secondSelected) {
                changeSelected();
              }
              if (widget.quantity >= 0) {
                widget.increment();
              }
            });
          },
        ),
      ],
    );
  }

  void changeSelected() => _secondSelected = !_secondSelected;
}

class _RoundedButton extends StatefulWidget {
  const _RoundedButton({
    Key key,
    @required this.onTap,
    @required this.selected,
    @required this.icon,
  }) : super(key: key);

  final Function onTap;
  final bool selected;
  final IconData icon;
  @override
  __RoundedButtonState createState() => __RoundedButtonState();
}

class __RoundedButtonState extends State<_RoundedButton> {
  @override
  Widget build(BuildContext context) {
    bool _isSelected = widget.selected;
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color:
              _isSelected ? Theme.of(context).accentColor : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Theme.of(context).accentColor,
          ),
        ),
        child: Icon(
          widget.icon,
          size: 20,
          color: _isSelected ? Colors.white : Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
