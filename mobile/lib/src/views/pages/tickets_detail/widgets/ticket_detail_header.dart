import '../../../../controllers/ticket_controller.dart';
import 'package:flutter/material.dart';

class TicketsDetailHeader extends StatelessWidget {
  TicketsDetailHeader({
    Key key,
    @required this.image,
    @required this.video,
    @required this.con,
    @required this.heroTag,
  }) : super(key: key);
  final String image;
  final String video;
  final String heroTag;
  final TicketController con;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 4 / 3,
          child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    tag: heroTag,
                    child: FadeInImage(
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                      image: NetworkImage(image),
                      placeholder: AssetImage(
                        'assets/img/loading.gif',
                      ),
                    ),
                  )

                  // child: Image.asset(
                  //   image,
                  //   fit: BoxFit.cover,
                  // ),
                  )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _BackButton(),
            _LikeButton(con: con),
          ],
        ),
        // Positioned(
        //   top: 10,
        //   left: 10,
        //   child: _BackButton(),
        // ),
        // Positioned(
        //   top: 10,
        //   left: 300,
        //   child: _LikeButton(
        //     con: con,
        //   ),
        // ),
      ],
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: Icon(
          Icons.arrow_back_ios_new,
          size: 15,
        ),
      ),
    );
  }
}

class _LikeButton extends StatefulWidget {
  _LikeButton({
    Key key,
    @required this.con,
  }) : super(key: key);
  final TicketController con;
  @override
  __LikeButtonState createState() => __LikeButtonState();
}

class __LikeButtonState extends State<_LikeButton> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;

          !_isSelected
              ? widget.con.addToFavorite(widget.con.ticket, context)
              : widget.con.removeFromFavorite(widget.con.favorite, context);
        });
      },
      child: AnimatedContainer(
        width: 40,
        height: 40,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(50),
        //   color: !_isSelected ? Colors.white : Colors.red,
        //   // boxShadow: [
        //   //   BoxShadow(
        //   //     color: Colors.red.withOpacity(0.2),
        //   //     blurRadius: 5,
        //   //     spreadRadius: 10,
        //   //   )
        //   // ],
        // ),
        duration: Duration(milliseconds: 100),
        child: Icon(
          !_isSelected ? Icons.favorite_rounded : Icons.favorite_outline,
          color: Colors.red,
        ),
      ),
    );
  }
}
