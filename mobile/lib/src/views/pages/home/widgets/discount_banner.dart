import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

// import '../../../../models/slider.dart' as model;
import '../../../../controllers/slider_controller.dart';
import '../../../../utils/size_config.dart';

class DiscountBanner extends StatefulWidget {
  const DiscountBanner({
    Key key,
    @required this.sizeConfig,
    @required this.initialSlider,
    @required this.finalSlider,
  }) : super(key: key);

  final int initialSlider;
  final int finalSlider;
  final SizeConfig sizeConfig;

  @override
  _DiscountBannerState createState() => _DiscountBannerState();
}

class _DiscountBannerState extends StateMVC<DiscountBanner> {
  // int _current = 0;
  SliderController _controller;
  _DiscountBannerState() : super(SliderController()) {
    _controller = controller;
  }
  @override
  void didChangeDependencies() {
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller.sliders.length < widget.finalSlider) {
      return Center(
          child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Container(
            // color: Theme.of(context).accentColor,
            // strokeWidth: 2.5,
            // backgroundColor: Colors.transparent,
            ),
      ));
    }
    var sliderList = _controller.sliders
        .getRange(widget.initialSlider ?? 0, widget.finalSlider ?? 0);
    return _controller.sliders == null || _controller.sliders.length < 1
        ? Center(child: Container())
        : Container(
            margin: _controller.sliders.length < 1
                ? Container()
                : EdgeInsets.symmetric(
                    vertical: widget.sizeConfig.getProportionateScreenWidth(10),
                  ),
            width: double.infinity,
            height: widget.sizeConfig.getProportionateScreenWidth(175),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),

            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                height: 240,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    // _current = index.toInt();
                  });
                },
              ),
              items: sliderList.map((slide) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          height: widget.sizeConfig
                              .getProportionateScreenHeight(200),
                          width: widget.sizeConfig
                              .getProportionateScreenWidth(350),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: FadeInImage(
                              image: NetworkImage(slide.image.url),
                              placeholder: AssetImage('assets/img/loading.gif'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                              colors: [
                                Color(0xFF343434).withOpacity(0.1),
                                Color(0xFF343434).withOpacity(0.05),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              child: Text(
                                slide.description,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .merge(TextStyle(
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
            // child: Stack(
            //   alignment: AlignmentDirectional.center,
            //   children: [
            //     ClipRRect(
            //       borderRadius: BorderRadius.circular(15),
            //       child: AspectRatio(
            //         aspectRatio: 17.3 / 9,
            //         child: FadeInImage(
            //           fit: BoxFit.cover,
            //           image: NetworkImage(
            //             _controller.sliders[widget.index].image.url,
            //             scale: 1,
            //           ),
            //           placeholder: AssetImage('assets/img/loading.gif'),
            //         ),
            //       ),
            //     ),
            //   ],
            // )
            //  Row(
            //   children: [
            //     Text.rich(
            //       TextSpan(
            //         text: 'SALITOS\n',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 25,
            //         ),
            //         children: [
            //           TextSpan(
            //               text: 'IMPORTED',
            //               style: TextStyle(
            //                 fontSize: 30,
            //                 fontWeight: FontWeight.w500,
            //               )),
            //           TextSpan(
            //             text: '  20%',
            //             style: TextStyle(
            //               color: Colors.yellow,
            //               fontSize: 35,
            //               fontWeight: FontWeight.w800,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          );
  }
}
