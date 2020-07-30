/* Options:
Date: 2020-07-30 18:17:42
Version: 5.90
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: http://ss-dart-testing.azurewebsites.net/ss-api

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
//IncludeTypes: 
//ExcludeTypes: 
//DefaultImports: package:servicestack/servicestack.dart
*/

import 'package:servicestack/servicestack.dart';

class Hours {}

class Foreign_Ids implements IConvertible {
  Foreign_Ids();
  Foreign_Ids.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  TypeContext context = _ctx;
}

class Attributes implements IConvertible {
  String alcohol;
  String price_rating;
  bool spicy;
  bool egg;
  bool wheat;
  bool dairy;
  bool shellfish;
  bool soy;

  Attributes(
      {this.alcohol,
      this.price_rating,
      this.spicy,
      this.egg,
      this.wheat,
      this.dairy,
      this.shellfish,
      this.soy});
  Attributes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    alcohol = json['alcohol'];
    price_rating = json['price_rating'];
    spicy = json['spicy'];
    egg = json['egg'];
    wheat = json['wheat'];
    dairy = json['dairy'];
    shellfish = json['shellfish'];
    soy = json['soy'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'alcohol': alcohol,
        'price_rating': price_rating,
        'spicy': spicy,
        'egg': egg,
        'wheat': wheat,
        'dairy': dairy,
        'shellfish': shellfish,
        'soy': soy
      };

  TypeContext context = _ctx;
}

class LocationMeta implements IConvertible {
  String address1;
  String address2;
  String city;
  String state;
  String country;
  String postal_code;
  double longitude;
  double latitude;
  String neighborhood;
  String cross_street;
  String directions;

  LocationMeta(
      {this.address1,
      this.address2,
      this.city,
      this.state,
      this.country,
      this.postal_code,
      this.longitude,
      this.latitude,
      this.neighborhood,
      this.cross_street,
      this.directions});
  LocationMeta.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    address1 = json['address1'];
    address2 = json['address2'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postal_code = json['postal_code'];
    longitude = JsonConverters.toDouble(json['longitude']);
    latitude = JsonConverters.toDouble(json['latitude']);
    neighborhood = json['neighborhood'];
    cross_street = json['cross_street'];
    directions = json['directions'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'address1': address1,
        'address2': address2,
        'city': city,
        'state': state,
        'country': country,
        'postal_code': postal_code,
        'longitude': longitude,
        'latitude': latitude,
        'neighborhood': neighborhood,
        'cross_street': cross_street,
        'directions': directions
      };

  TypeContext context = _ctx;
}

class Location implements IConvertible {
  bool out_of_business;
  DateTime updated;
  DateTime created;
  String email;
  String website;
  String name;
  bool has_hours;
  String published_at;
  bool has_menus;
  bool sp_photos;
  String description;
  Hours hours;
  String phone;
  String business_type;
  Foreign_Ids foreign_ids;
  String time_zone;
  Attributes attributes;
  bool is_published;
  bool is_owner_verified;
  int location_nid;
  String location_id;
  LocationMeta location;
  String _id;

  Location(
      {this.out_of_business,
      this.updated,
      this.created,
      this.email,
      this.website,
      this.name,
      this.has_hours,
      this.published_at,
      this.has_menus,
      this.sp_photos,
      this.description,
      this.hours,
      this.phone,
      this.business_type,
      this.foreign_ids,
      this.time_zone,
      this.attributes,
      this.is_published,
      this.is_owner_verified,
      this.location_nid,
      this.location_id,
      this.location});
  Location.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    out_of_business = json['out_of_business'];
    updated = JsonConverters.fromJson(json['updated'], 'DateTime', context);
    created = JsonConverters.fromJson(json['created'], 'DateTime', context);
    email = json['email'];
    website = json['website'];
    name = json['name'];
    has_hours = json['has_hours'];
    published_at = json['published_at'];
    has_menus = json['has_menus'];
    sp_photos = json['sp_photos'];
    description = json['description'];
    hours = JsonConverters.fromJson(json['hours'], 'Hours', context);
    phone = json['phone'];
    business_type = json['business_type'];
    foreign_ids =
        JsonConverters.fromJson(json['foreign_ids'], 'Foreign_Ids', context);
    time_zone = json['time_zone'];
    attributes =
        JsonConverters.fromJson(json['attributes'], 'Attributes', context);
    is_published = json['is_published'];
    is_owner_verified = json['is_owner_verified'];
    location_nid = json['location_nid'];
    location_id = json['location_id'];
    location =
        JsonConverters.fromJson(json['location'], 'LocationMeta', context);

    return this;
  }

  Map<String, dynamic> toJson() => {
        'out_of_business': out_of_business,
        'updated': JsonConverters.toJson(updated, 'DateTime', context),
        'created': JsonConverters.toJson(created, 'DateTime', context),
        'email': email,
        'website': website,
        'name': name,
        'has_hours': has_hours,
        'published_at': published_at,
        'has_menus': has_menus,
        'sp_photos': sp_photos,
        'description': description,
        'hours': JsonConverters.toJson(hours, 'Hours', context),
        'phone': phone,
        'business_type': business_type,
        'foreign_ids':
            JsonConverters.toJson(foreign_ids, 'Foreign_Ids', context),
        'time_zone': time_zone,
        'attributes': JsonConverters.toJson(attributes, 'Attributes', context),
        'is_published': is_published,
        'is_owner_verified': is_owner_verified,
        'location_nid': location_nid,
        'location_id': location_id,
        'location': JsonConverters.toJson(location, 'LocationMeta', context),
        '_id': _id
      };

  TypeContext context = _ctx;
}

class Data implements IConvertible {
  List<Menu> menus;
  List<Photo> photos;
  Location location;

  Data({this.menus, this.photos, this.location});
  Data.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    menus = JsonConverters.fromJson(json['menus'], 'List<Menu>', context);
    photos = JsonConverters.fromJson(json['photos'], 'List<Photo>', context);
    location = JsonConverters.fromJson(json['location'], 'Location', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'menus': JsonConverters.toJson(menus, 'List<Menu>', context),
        'photos': JsonConverters.toJson(photos, 'List<Photo>', context),
        'location': JsonConverters.toJson(location, 'Location', context)
      };

  TypeContext context = _ctx;
}

class LocationsAllResponse implements IConvertible {
  int code;
  Data data;

  LocationsAllResponse({this.code, this.data});
  LocationsAllResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    code = json['code'];
    data = JsonConverters.fromJson(json['data'], 'Data', context);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'code': code, 'data': JsonConverters.toJson(data, 'Data', context)};

  TypeContext context = _ctx;
}

class LocationDtoShort implements IConvertible {
  int Id;
  String Name;
  String City;
  String State;

  LocationDtoShort({this.Id, this.Name, this.City, this.State});
  LocationDtoShort.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    Id = json['Id'];
    Name = json['Name'];
    City = json['City'];
    State = json['State'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'Id': Id, 'Name': Name, 'City': City, 'State': State};

  TypeContext context = _ctx;
}

class LocationDtoLong extends LocationDtoShort implements IConvertible {
  String Address1;
  String Address2;
  String Zip;
  String Latitude;
  String Longitude;
  String Phone;
  String PhoneCatering;
  String ExternalId;

  LocationDtoLong(
      {this.Address1,
      this.Address2,
      this.Zip,
      this.Latitude,
      this.Longitude,
      this.Phone,
      this.PhoneCatering,
      this.ExternalId});
  LocationDtoLong.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    Address1 = json['Address1'];
    Address2 = json['Address2'];
    Zip = json['Zip'];
    Latitude = json['Latitude'];
    Longitude = json['Longitude'];
    Phone = json['Phone'];
    PhoneCatering = json['PhoneCatering'];
    ExternalId = json['ExternalId'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'Address1': Address1,
      'Address2': Address2,
      'Zip': Zip,
      'Latitude': Latitude,
      'Longitude': Longitude,
      'Phone': Phone,
      'PhoneCatering': PhoneCatering,
      'ExternalId': ExternalId
    });

  TypeContext context = _ctx;
}

class Menu implements IConvertible {
  int id;
  String menu_type;
  String location_id;
  String name;
  String description;
  String footnote;
  int order_num;
  String currency;
  DateTime created;
  DateTime updated;
  List<Section> sections;
  String attribution_image;
  String attribution_image_link;
  String secure_attribution_image;
  String secure_attribution_image_link;

  Menu(
      {this.id,
      this.menu_type,
      this.location_id,
      this.name,
      this.description,
      this.footnote,
      this.order_num,
      this.currency,
      this.created,
      this.updated,
      this.sections,
      this.attribution_image,
      this.attribution_image_link,
      this.secure_attribution_image,
      this.secure_attribution_image_link});
  Menu.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    menu_type = json['menu_type'];
    location_id = json['location_id'];
    name = json['name'];
    description = json['description'];
    footnote = json['footnote'];
    order_num = json['order_num'];
    currency = json['currency'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context);
    updated = JsonConverters.fromJson(json['updated'], 'DateTime', context);
    sections =
        JsonConverters.fromJson(json['sections'], 'List<Section>', context);
    attribution_image = json['attribution_image'];
    attribution_image_link = json['attribution_image_link'];
    secure_attribution_image = json['secure_attribution_image'];
    secure_attribution_image_link = json['secure_attribution_image_link'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'menu_type': menu_type,
        'location_id': location_id,
        'name': name,
        'description': description,
        'footnote': footnote,
        'order_num': order_num,
        'currency': currency,
        'created': JsonConverters.toJson(created, 'DateTime', context),
        'updated': JsonConverters.toJson(updated, 'DateTime', context),
        'sections': JsonConverters.toJson(sections, 'List<Section>', context),
        'attribution_image': attribution_image,
        'attribution_image_link': attribution_image_link,
        'secure_attribution_image': secure_attribution_image,
        'secure_attribution_image_link': secure_attribution_image_link
      };

  TypeContext context = _ctx;
}

class LocationDto extends LocationDtoLong implements IConvertible {
  List<Menu> Menus;

  LocationDto({this.Menus});
  LocationDto.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    Menus = JsonConverters.fromJson(json['Menus'], 'List<Menu>', context);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({'Menus': JsonConverters.toJson(Menus, 'List<Menu>', context)});

  TypeContext context = _ctx;
}

class Photo implements IConvertible {
  String photo_id;
  String location_id;
  String title;
  String type;
  int original_width;
  int original_height;
  int size;
  String source;
  String url;
  bool main_image;
  DateTime updated;
  List<int> items;

  Photo(
      {this.photo_id,
      this.location_id,
      this.title,
      this.type,
      this.original_width,
      this.original_height,
      this.size,
      this.source,
      this.url,
      this.main_image,
      this.updated,
      this.items});
  Photo.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    photo_id = json['photo_id'];
    location_id = json['location_id'];
    title = json['title'];
    type = json['type'];
    original_width = json['original_width'];
    original_height = json['original_height'];
    size = json['size'];
    source = json['source'];
    url = json['url'];
    main_image = json['main_image'];
    updated = JsonConverters.fromJson(json['updated'], 'DateTime', context);
    items = JsonConverters.fromJson(json['items'], 'List<int>', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'photo_id': photo_id,
        'location_id': location_id,
        'title': title,
        'type': type,
        'original_width': original_width,
        'original_height': original_height,
        'size': size,
        'source': source,
        'url': url,
        'main_image': main_image,
        'updated': JsonConverters.toJson(updated, 'DateTime', context),
        'items': JsonConverters.toJson(items, 'List<int>', context)
      };

  TypeContext context = _ctx;
}

class Section implements IConvertible {
  int id;
  String name;
  String description;
  int order_num;
  List<Item> items;

  Section({this.id, this.name, this.description, this.order_num, this.items});
  Section.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    order_num = json['order_num'];
    items = JsonConverters.fromJson(json['items'], 'List<Item>', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'order_num': order_num,
        'items': JsonConverters.toJson(items, 'List<Item>', context)
      };

  TypeContext context = _ctx;
}

class Item implements IConvertible {
  int id;
  String name;
  String description;
  int order_num;
  List<Choice> choices;
  Attributes attributes;
  List<Photo> photos;
  List<Addition> additions;

  Item(
      {this.id,
      this.name,
      this.description,
      this.order_num,
      this.choices,
      this.attributes,
      this.photos,
      this.additions});
  Item.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    order_num = json['order_num'];
    choices = JsonConverters.fromJson(json['choices'], 'List<Choice>', context);
    attributes =
        JsonConverters.fromJson(json['attributes'], 'Attributes', context);
    photos = JsonConverters.fromJson(json['photos'], 'List<Photo>', context);
    additions =
        JsonConverters.fromJson(json['additions'], 'List<Addition>', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'order_num': order_num,
        'choices': JsonConverters.toJson(choices, 'List<Choice>', context),
        'attributes': JsonConverters.toJson(attributes, 'Attributes', context),
        'photos': JsonConverters.toJson(photos, 'List<Photo>', context),
        'additions': JsonConverters.toJson(additions, 'List<Addition>', context)
      };

  TypeContext context = _ctx;
}

class Monday implements IConvertible {
  String opening;
  String closing;
  String description;

  Monday({this.opening, this.closing, this.description});
  Monday.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    opening = json['opening'];
    closing = json['closing'];
    description = json['description'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'opening': opening, 'closing': closing, 'description': description};

  TypeContext context = _ctx;
}

class Tuesday implements IConvertible {
  String opening;
  String closing;
  String description;

  Tuesday({this.opening, this.closing, this.description});
  Tuesday.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    opening = json['opening'];
    closing = json['closing'];
    description = json['description'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'opening': opening, 'closing': closing, 'description': description};

  TypeContext context = _ctx;
}

class Wednesday implements IConvertible {
  String opening;
  String closing;
  String description;

  Wednesday({this.opening, this.closing, this.description});
  Wednesday.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    opening = json['opening'];
    closing = json['closing'];
    description = json['description'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'opening': opening, 'closing': closing, 'description': description};

  TypeContext context = _ctx;
}

class Thursday implements IConvertible {
  String opening;
  String closing;
  String description;

  Thursday({this.opening, this.closing, this.description});
  Thursday.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    opening = json['opening'];
    closing = json['closing'];
    description = json['description'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'opening': opening, 'closing': closing, 'description': description};

  TypeContext context = _ctx;
}

class Friday implements IConvertible {
  String opening;
  String closing;
  String description;

  Friday({this.opening, this.closing, this.description});
  Friday.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    opening = json['opening'];
    closing = json['closing'];
    description = json['description'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'opening': opening, 'closing': closing, 'description': description};

  TypeContext context = _ctx;
}

class Saturday implements IConvertible {
  String opening;
  String closing;
  String description;

  Saturday({this.opening, this.closing, this.description});
  Saturday.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    opening = json['opening'];
    closing = json['closing'];
    description = json['description'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'opening': opening, 'closing': closing, 'description': description};

  TypeContext context = _ctx;
}

class Sunday implements IConvertible {
  String opening;
  String closing;
  String description;

  Sunday({this.opening, this.closing, this.description});
  Sunday.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    opening = json['opening'];
    closing = json['closing'];
    description = json['description'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'opening': opening, 'closing': closing, 'description': description};

  TypeContext context = _ctx;
}

class Calories implements IConvertible {
  String max;
  String min;

  Calories({this.max, this.min});
  Calories.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    max = json['max'];
    min = json['min'];
    return this;
  }

  Map<String, dynamic> toJson() => {'max': max, 'min': min};

  TypeContext context = _ctx;
}

class Prices implements IConvertible {
  String max;
  double min;

  Prices({this.max, this.min});
  Prices.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    max = json['max'];
    min = JsonConverters.toDouble(json['min']);
    return this;
  }

  Map<String, dynamic> toJson() => {'max': max, 'min': min};

  TypeContext context = _ctx;
}

class Choice implements IConvertible {
  String name;
  String unit;
  Calories calories;
  Prices prices;
  int order_num;

  Choice({this.name, this.unit, this.calories, this.prices, this.order_num});
  Choice.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    unit = json['unit'];
    calories = JsonConverters.fromJson(json['calories'], 'Calories', context);
    prices = JsonConverters.fromJson(json['prices'], 'Prices', context);
    order_num = json['order_num'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'unit': unit,
        'calories': JsonConverters.toJson(calories, 'Calories', context),
        'prices': JsonConverters.toJson(prices, 'Prices', context),
        'order_num': order_num
      };

  TypeContext context = _ctx;
}

class Prices1 implements IConvertible {
  String max;
  int min;

  Prices1({this.max, this.min});
  Prices1.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    max = json['max'];
    min = json['min'];
    return this;
  }

  Map<String, dynamic> toJson() => {'max': max, 'min': min};

  TypeContext context = _ctx;
}

class Addition implements IConvertible {
  String name;
  String unit;
  Prices1 prices;
  int order_num;

  Addition({this.name, this.unit, this.prices, this.order_num});
  Addition.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    unit = json['unit'];
    prices = JsonConverters.fromJson(json['prices'], 'Prices1', context);
    order_num = json['order_num'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'unit': unit,
        'prices': JsonConverters.toJson(prices, 'Prices1', context),
        'order_num': order_num
      };

  TypeContext context = _ctx;
}

// @Route("/dart-exports")
class DartExports implements IConvertible {
  LocationsAllResponse locationsAllResponse;
  List<LocationDtoShort> locationDtoShorts;
  List<LocationDtoLong> locationDtoLongs;
  List<LocationDto> locationDtos;
  LocationDto locationDto;
  LocationDtoShort locationDtoShort;
  LocationDtoLong locationDtoLong;

  DartExports(
      {this.locationsAllResponse,
      this.locationDtoShorts,
      this.locationDtoLongs,
      this.locationDtos,
      this.locationDto,
      this.locationDtoShort,
      this.locationDtoLong});
  DartExports.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    locationsAllResponse = JsonConverters.fromJson(
        json['locationsAllResponse'], 'LocationsAllResponse', context);
    locationDtoShorts = JsonConverters.fromJson(
        json['locationDtoShorts'], 'List<LocationDtoShort>', context);
    locationDtoLongs = JsonConverters.fromJson(
        json['locationDtoLongs'], 'List<LocationDtoLong>', context);
    locationDtos = JsonConverters.fromJson(
        json['locationDtos'], 'List<LocationDto>', context);
    locationDto =
        JsonConverters.fromJson(json['locationDto'], 'LocationDto', context);
    locationDtoShort = JsonConverters.fromJson(
        json['locationDtoShort'], 'LocationDtoShort', context);
    locationDtoLong = JsonConverters.fromJson(
        json['locationDtoLong'], 'LocationDtoLong', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'locationsAllResponse': JsonConverters.toJson(
            locationsAllResponse, 'LocationsAllResponse', context),
        'locationDtoShorts': JsonConverters.toJson(
            locationDtoShorts, 'List<LocationDtoShort>', context),
        'locationDtoLongs': JsonConverters.toJson(
            locationDtoLongs, 'List<LocationDtoLong>', context),
        'locationDtos':
            JsonConverters.toJson(locationDtos, 'List<LocationDto>', context),
        'locationDto':
            JsonConverters.toJson(locationDto, 'LocationDto', context),
        'locationDtoShort': JsonConverters.toJson(
            locationDtoShort, 'LocationDtoShort', context),
        'locationDtoLong':
            JsonConverters.toJson(locationDtoLong, 'LocationDtoLong', context)
      };

  TypeContext context = _ctx;
}

// @Route("/locations/short")
class LocationShortListRequest
    implements IReturn<List<LocationDtoShort>>, IConvertible {
  LocationShortListRequest();
  LocationShortListRequest.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() {
    return new List<LocationDtoShort>();
  }

  String getTypeName() {
    return "LocationShortListRequest";
  }

  TypeContext context = _ctx;
}

// @Route("/locations/short/autoquery")
class LocationShortAutoQueryListRequest
    implements IReturn<QueryResponse<LocationDtoShort>>, IConvertible {
  LocationShortAutoQueryListRequest();
  LocationShortAutoQueryListRequest.fromJson(Map<String, dynamic> json)
      : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() {
    return new QueryResponse<LocationDtoShort>();
  }

  String getTypeName() {
    return "LocationShortAutoQueryListRequest";
  }

  TypeContext context = _ctx;
}

TypeContext _ctx =
    new TypeContext(library: 'ss_dart_testing.azurewebsites.net', types: <
        String, TypeInfo>{
  'Hours': new TypeInfo(TypeOf.Class, create: () => new Hours()),
  'List<Monday>': new TypeInfo(TypeOf.Class, create: () => new List<Monday>()),
  'Monday': new TypeInfo(TypeOf.Class, create: () => new Monday()),
  'List<Tuesday>':
      new TypeInfo(TypeOf.Class, create: () => new List<Tuesday>()),
  'Tuesday': new TypeInfo(TypeOf.Class, create: () => new Tuesday()),
  'List<Wednesday>':
      new TypeInfo(TypeOf.Class, create: () => new List<Wednesday>()),
  'Wednesday': new TypeInfo(TypeOf.Class, create: () => new Wednesday()),
  'List<Thursday>':
      new TypeInfo(TypeOf.Class, create: () => new List<Thursday>()),
  'Thursday': new TypeInfo(TypeOf.Class, create: () => new Thursday()),
  'List<Friday>': new TypeInfo(TypeOf.Class, create: () => new List<Friday>()),
  'Friday': new TypeInfo(TypeOf.Class, create: () => new Friday()),
  'List<Saturday>':
      new TypeInfo(TypeOf.Class, create: () => new List<Saturday>()),
  'Saturday': new TypeInfo(TypeOf.Class, create: () => new Saturday()),
  'List<Sunday>': new TypeInfo(TypeOf.Class, create: () => new List<Sunday>()),
  'Sunday': new TypeInfo(TypeOf.Class, create: () => new Sunday()),
  'Foreign_Ids': new TypeInfo(TypeOf.Class, create: () => new Foreign_Ids()),
  'Attributes': new TypeInfo(TypeOf.Class, create: () => new Attributes()),
  'LocationMeta': new TypeInfo(TypeOf.Class, create: () => new LocationMeta()),
  'Location': new TypeInfo(TypeOf.Class, create: () => new Location()),
  'Data': new TypeInfo(TypeOf.Class, create: () => new Data()),
  'List<Menu>': new TypeInfo(TypeOf.Class, create: () => new List<Menu>()),
  'Menu': new TypeInfo(TypeOf.Class, create: () => new Menu()),
  'List<Photo>': new TypeInfo(TypeOf.Class, create: () => new List<Photo>()),
  'Photo': new TypeInfo(TypeOf.Class, create: () => new Photo()),
  'LocationsAllResponse':
      new TypeInfo(TypeOf.Class, create: () => new LocationsAllResponse()),
  'LocationDtoShort':
      new TypeInfo(TypeOf.Class, create: () => new LocationDtoShort()),
  'LocationDtoLong':
      new TypeInfo(TypeOf.Class, create: () => new LocationDtoLong()),
  'List<Section>':
      new TypeInfo(TypeOf.Class, create: () => new List<Section>()),
  'Section': new TypeInfo(TypeOf.Class, create: () => new Section()),
  'LocationDto': new TypeInfo(TypeOf.Class, create: () => new LocationDto()),
  'List<Item>': new TypeInfo(TypeOf.Class, create: () => new List<Item>()),
  'Item': new TypeInfo(TypeOf.Class, create: () => new Item()),
  'List<Choice>': new TypeInfo(TypeOf.Class, create: () => new List<Choice>()),
  'Choice': new TypeInfo(TypeOf.Class, create: () => new Choice()),
  'List<Addition>':
      new TypeInfo(TypeOf.Class, create: () => new List<Addition>()),
  'Addition': new TypeInfo(TypeOf.Class, create: () => new Addition()),
  'Calories': new TypeInfo(TypeOf.Class, create: () => new Calories()),
  'Prices': new TypeInfo(TypeOf.Class, create: () => new Prices()),
  'Prices1': new TypeInfo(TypeOf.Class, create: () => new Prices1()),
  'DartExports': new TypeInfo(TypeOf.Class, create: () => new DartExports()),
  'List<LocationDtoShort>':
      new TypeInfo(TypeOf.Class, create: () => new List<LocationDtoShort>()),
  'List<LocationDtoLong>':
      new TypeInfo(TypeOf.Class, create: () => new List<LocationDtoLong>()),
  'List<LocationDto>':
      new TypeInfo(TypeOf.Class, create: () => new List<LocationDto>()),
  'LocationShortListRequest':
      new TypeInfo(TypeOf.Class, create: () => new LocationShortListRequest()),
  'LocationShortAutoQueryListRequest': new TypeInfo(TypeOf.Class,
      create: () => new LocationShortAutoQueryListRequest()),
});
