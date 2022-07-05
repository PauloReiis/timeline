import 'package:timeline/src/core/util/util.dart';
import 'package:timeline/src/domain/timeline/entities/user.dart';

class UserModel extends User{
  int id;
  UserAvatar avatar;
  String name;
  String username;
  String email;
  UserAddress address;
  String phone;
  String website;
  UserCompany company;

  UserModel({
    this.id,
    this.avatar,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  }) : super(
    id:id,
    avatar:avatar,
    name:name,
    username:username,
    email:email,
    address:address,
    phone:phone,
    website:website,
    company:company,
  )

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      avatar: UserAvatar.fromJson(Util.getMapJson(json['avatar'])),
      name: json['name'],
      username: json['username'],
      email: json['email'],
      address: UserAddress.fromJson(Util.getMapJson(json['address'])),
      phone: json['phone'],
      website: json['website'],
      company: UserCompany.fromJson(Util.getMapJson(json['company'])),
    );
  }
}

class UserAvatar {
  String? large;
  String? medium;
  String? thumbnail;

  UserAvatar({this.large, this.medium, this.thumbnail});

  factory UserAvatar.fromJson(Map<String, dynamic> json) {
    return UserAvatar(
      large: json['large'],
      medium: json['medium'],
      thumbnail: json['thumbnail'],
    );
  }
}

class UserAddress {
  String? street;
  int? suite;
  String? city;
  int? zipcode;
  UserGeo? geo;

  UserAddress({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory UserAddress.fromJson(Map<String, dynamic> json) {
    return UserAddress(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
      geo: UserGeo.fromJson(Util.getMapJson(json['geo'])),
    );
  }
}

class UserGeo {
  double? lat;
  double? lng;

  UserGeo({this.lat, this.lng});

  factory UserGeo.fromJson(Map<String, dynamic> json) {
    return UserGeo(
      lat: json['lat'],
      lng: json['lng'],
    );
  }
}

class UserCompany {
  String? name;
  String? catchPhrase;
  String? bs;

  UserCompany({this.name, this.catchPhrase, this.bs});

  factory UserCompany.fromJson(Map<String, dynamic> json) {
    return UserCompany(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }
}
