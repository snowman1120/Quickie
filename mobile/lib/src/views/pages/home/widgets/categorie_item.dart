// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_html/html_parser.dart';

import '../../../../utils/size_config.dart';
import 'package:flutter/material.dart';

class CategorieItem extends StatefulWidget {
  const CategorieItem({
    Key key,
    @required this.sizeConfig,
    @required this.icon,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  final String icon, text;
  final SizeConfig sizeConfig;
  final GestureTapCallback onTap;

  @override
  _CategorieItemState createState() => _CategorieItemState();
}

class _CategorieItemState extends State<CategorieItem> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
        // setState(() {
        //   // _isSelected = !_isSelected;
        // });
      },
      child: SizedBox(
        width: widget.sizeConfig.getProportionateScreenWidth(60),
        height: widget.sizeConfig.getProportionateScreenHeight(100),
        child: AnimatedContainer(
          decoration: BoxDecoration(
            color: _isSelected ? Colors.blue : Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(50),
          ),
          duration: Duration(milliseconds: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipOval(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(7),
                        child: FadeInImage(
                          image: NetworkImage(widget.icon),
                          placeholder: AssetImage('assets/img/loading.gif'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(widget.text,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.button

                  // TextStyle(
                  //   color: _isSelected
                  //       ? Theme.of(context).hintColor
                  //       : Theme.of(context).accentColor,
                  //   fontWeight: FontWeight.w500,
                  // ),
                  ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
