import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';

class SideMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String navegateTo;
  const SideMenuItem(
    this.navegateTo, {
    Key key,
    @required this.icon,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 50,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        splashColor: kprimaryShadow,
        highlightColor: kprimaryShadow,
        onTap: () => Navigator.of(context).pushNamed(this.navegateTo),
        child: Row(
          children: [
            Icon(
              this.icon,
              color: Colors.grey,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              this.label,
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      ),
    );
  }
}
