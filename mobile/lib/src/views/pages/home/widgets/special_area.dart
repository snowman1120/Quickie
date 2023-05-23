import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../../../generated/l10n.dart';
import '../../../../controllers/slider_controller.dart';
import '../../../../utils/physics.dart';
import '../../../../utils/size_config.dart';
import 'title_section.dart';

class SpecialArea extends StatefulWidget {
  const SpecialArea({
    Key key,
    @required this.sizeConfig,
    @required this.initialSlider,
    @required this.finalSlider,
  }) : super(key: key);

  final int initialSlider;
  final int finalSlider;
  final SizeConfig sizeConfig;

  @override
  _SpecialAreaState createState() => _SpecialAreaState();
}

class _SpecialAreaState extends StateMVC<SpecialArea> {
  SliderController _controller;

  _SpecialAreaState() : super(SliderController()) {
    _controller = controller;
  }

  @override
  void didChangeDependencies() {
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    //
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
    var sliderList =
        _controller.sliders.getRange(widget.initialSlider, widget.finalSlider);

    //
    return _controller.sliders == null ||
            _controller.sliders.length < widget.finalSlider + 1
        ? Center(child: Container())
        : Column(
            children: [
              TitleSection(
                sizeConfig: widget.sizeConfig,
                title: S.of(context).trending_this_week,
                buttonText: '',
              ),

              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  height: 100,
                  scrollPhysics: kScrollPhysics,
                  viewportFraction: 0.7,
                  onPageChanged: (index, reason) {
                    setState(() {
                      // _current = index.toInt();
                    });
                  },
                ),
                items: sliderList
                    .map(
                      (slide) => Builder(
                        builder: (BuildContext context) => _SpecialOfferCard(
                          sizeConfig: widget.sizeConfig,
                          image: slide.image.url,
                          message: slide.description,
                          onTap: () {},
                        ),
                      ),
                    )
                    .toList(),
              )
              // SingleChildScrollView(
              //   physics: kScrollPhysics,
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       ...List.generate(
              //           sliderList.length,
              //           (index) => _SpecialOfferCard(
              //               sizeConfig: widget.sizeConfig,
              //               image: sliderList.elementAt(index).image.url,
              //               message: sliderList.elementAt(index).description,
              //               onTap: () {}))
              //     ],
              //   ),
              // ),
            ],
          );
  }
}

class _SpecialOfferCard extends StatelessWidget {
  const _SpecialOfferCard({
    Key key,
    @required this.sizeConfig,
    // @required this.category,
    @required this.image,
    @required this.message,
    @required this.onTap,
  }) : super(key: key);

  final SizeConfig sizeConfig;
  final String image, message;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeConfig.getProportionateScreenWidth(100),
      width: sizeConfig.getProportionateScreenWidth(230),
      margin: EdgeInsets.symmetric(
          horizontal: sizeConfig.getProportionateScreenWidth(8)),
      child: InkWell(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            fit: StackFit.expand,
            children: [
              FadeInImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
                placeholder: AssetImage('assets/img/loading.gif'),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.2),
                      Color(0xFF343434).withOpacity(0.05),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sizeConfig.getProportionateScreenWidth(15),
                  vertical: sizeConfig.getProportionateScreenWidth(10),
                ),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        style: TextStyle(
                          fontSize: sizeConfig.getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold,
                        ),
                        text: '\n',
                      ),
                      TextSpan(
                        text: '$message',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
