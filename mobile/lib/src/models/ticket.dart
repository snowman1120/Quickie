import 'package:ecommerce/src/helpers/helper.dart';
import 'package:ecommerce/src/models/gender.dart';
import 'package:ecommerce/src/models/map_info.dart';
import 'package:ecommerce/src/models/product.dart';
import 'package:ecommerce/src/models/period_date.dart';
import 'package:global_configuration/global_configuration.dart';

import '../models/category.dart';
import '../models/store.dart';
import '../models/media.dart';
import '../models/option.dart';
import '../models/option_group.dart';
import '../models/review.dart';
import '../models/brand.dart';
import 'coupon.dart';

class Ticket extends Product {
  Media video;
  String videoUrl;
  String imageUrl;
  String groupArtist;
  PeriodDate date;
  MapInfo venue;
  Gender gender;
  double latitude;
  double longitude;
  double zoom;

  Ticket();

  @override
  Ticket.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      id = jsonMap['id'].toString();
      name = jsonMap['name'];
      price = jsonMap['price'] != null ? jsonMap['price'].toDouble() : 0.0;
      discountPrice = jsonMap['discount_price'] != null
          ? jsonMap['discount_price'].toDouble()
          : 0.0;
      price = discountPrice != 0 ? discountPrice : price;
      discountPrice = discountPrice == 0
          ? discountPrice
          : jsonMap['price'] != null
              ? jsonMap['price'].toDouble()
              : 0.0;
      description =
          jsonMap['description'] != null ? jsonMap['description'] : '';
      capacity = jsonMap['capacity'].toString();
      unit = jsonMap['unit'] != null ? jsonMap['unit'].toString() : '';
      packageItemsCount = jsonMap['package_items_count'] != null
          ? jsonMap['package_items_count'].toString()
          : '0';
      featured = jsonMap['featured'] ?? false;
      deliverable = jsonMap['deliverable'] ?? false;
      rate = jsonMap['rate'] ?? '0';
      itemsAvailable = jsonMap['itemsAvailable'] ?? '0';
      brand = jsonMap['brand'] != null
          ? Brand.fromJSON(jsonMap['brand'])
          : new Brand();

      store = jsonMap['store'] != null
          ? Store.fromJSON(jsonMap['store'])
          : new Store();

      category = jsonMap['category'] != null
          ? Category.fromJSON(jsonMap['category'])
          : new Category();

      options =
          jsonMap['options'] != null && (jsonMap['options'] as List).length > 0
              ? List.from(jsonMap['options'])
                  .map((element) => Option.fromJSON(element))
                  .toSet()
                  .toList()
              : [];
      optionGroups = jsonMap['option_groups'] != null &&
              (jsonMap['option_groups'] as List).length > 0
          ? List.from(jsonMap['option_groups'])
              .map((element) => OptionGroup.fromJSON(element))
              .toSet()
              .toList()
          : [];
      productReviews = jsonMap['product_reviews'] != null &&
              (jsonMap['product_reviews'] as List).length > 0
          ? List.from(jsonMap['product_reviews'])
              .map((element) => Review.fromJSON(element))
              .toSet()
              .toList()
          : [];
      checked = false;

      image = jsonMap['media'] != null && (jsonMap['media'] as List).length > 0
          ? Media.fromJSON(jsonMap['media'][0])
          : new Media();

      video = jsonMap['media'] != null && (jsonMap['media'] as List).length > 1
          ? Media.fromJSON(jsonMap['media'][1])
          : null;
      imageUrl = jsonMap['image'] != null
          ? '${GlobalConfiguration().getValue('base_url')}../storage/app/ticket/image/${jsonMap['image']}'
          : '';
      videoUrl = jsonMap['video'] != null
          ? '${GlobalConfiguration().getValue('base_url')}../storage/app/ticket/video/${jsonMap['video']}'
          : '';

      groupArtist =
          jsonMap['group_artist'] != null ? jsonMap['group_artist'] : '';

      // date = jsonMap['date'] != null
      //     ? PeriodDate.fromJSON(jsonMap['date'])
      //     : new PeriodDate();
      PeriodDate periodDate = new PeriodDate();
      periodDate.startDate = jsonMap['start_date'] != null
          ? DateTime.parse(jsonMap['start_date'])
          : DateTime.now();
      periodDate.endDate = jsonMap['end_date'] != null
          ? DateTime.parse(jsonMap['end_date'])
          : DateTime.now();
      date = periodDate;

      latitude =
          jsonMap['address_latitude'] != null ? jsonMap['address_latitude'] : 0;
      longitude = jsonMap['address_longitude'] != null
          ? jsonMap['address_longitude']
          : 0;
      zoom = jsonMap['map_zoom'] != null ? jsonMap['map_zoom'].toDouble() : 0;
      MapInfo mapInfo = new MapInfo();
      mapInfo.latitude = latitude;
      mapInfo.longitude = longitude;
      mapInfo.zoom = zoom;
      venue = mapInfo;

      gender = jsonMap['gender'] != null
          ? Helper.getGenderFromString(jsonMap['gender'])
          : Gender.MALE;
    } catch (e) {
      video = new Media();
      groupArtist = '';
      date = new PeriodDate();
      venue = new MapInfo();
      gender = Gender.MALE;
      print(jsonMap);
    }
  }

  @override
  Map toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["name"] = name;
    map["price"] = price;
    map["discountPrice"] = discountPrice;
    map["description"] = description;
    map["capacity"] = capacity;
    map["package_items_count"] = packageItemsCount;
    map["itemsAvailable"] = itemsAvailable;
    map['video'] = video;
    map['group_artist'] = groupArtist;
    map['date'] = date;
    map['venue'] = venue;
    map['gender'] = gender;
    return map;
  }

  @override
  bool operator ==(dynamic other) {
    return other.id == this.id;
  }

  @override
  int get hashCode => super.hashCode;

  Coupon applyCoupon(Coupon coupon) {
    if (coupon.code != '') {
      if (coupon.valid == null) {
        coupon.valid = false;
      }
      coupon.discountables.forEach((element) {
        if (element.discountableType == "App\\Models\\Ticket") {
          if (element.discountableId == id) {
            coupon = _couponDiscountPrice(coupon);
          }
        } else if (element.discountableType == "App\\Models\\Market") {
          if (element.discountableId == store.id) {
            coupon = _couponDiscountPrice(coupon);
          }
        } else if (element.discountableType == "App\\Models\\Category") {
          if (element.discountableId == category.id) {
            coupon = _couponDiscountPrice(coupon);
          }
        }
      });
    }
    return coupon;
  }

  Coupon _couponDiscountPrice(Coupon coupon) {
    coupon.valid = true;
    discountPrice = price;
    if (coupon.discountType == 'fixed') {
      price -= coupon.discount;
    } else {
      price = price - (price * coupon.discount / 100);
    }
    if (price < 0) price = 0;
    return coupon;
  }
}
