import 'package:flutter/material.dart';

import '../../../../utils/size_config.dart';
import '../../../../models/option.dart';
import '../../../../utils/colors.dart';

class ProductSizeSelector extends StatelessWidget {
  const ProductSizeSelector({
    Key key,
    @required this.sizeConfig,
    @required this.options,
    this.selected = false,
    this.selectOption,
  }) : super(key: key);

  final List<Option> options;
  final SizeConfig sizeConfig;
  final Function(Option) selectOption;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    print(options.length);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          options.length,
          (index) => ProductSize(
            sizeConfig: sizeConfig,
            selected: selected,
            quantity: options[index].name,
            onPressed: () {
              selectOption(options[index]);
            },
          ),
        ),
      ],
    );
  }
}

class ProductSize extends StatelessWidget {
  const ProductSize({
    Key key,
    @required this.sizeConfig,
    @required this.selected,
    this.quantity,
    @required this.onPressed,
  }) : super(key: key);

  final SizeConfig sizeConfig;
  final bool selected;
  final String quantity;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeConfig.screenWidth / 4,
      height: 35,
      decoration: BoxDecoration(
        color: selected ? kprimaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        border: !selected
            ? Border.all(
                color: Colors.grey.shade300,
              )
            : null,
      ),
      child: TextButton(
        child: Text(
          quantity,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
