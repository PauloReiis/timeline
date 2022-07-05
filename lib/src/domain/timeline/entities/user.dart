class User {
  int? id;
  UserAvatar? avatar;
  String? name;
  String? username;
  String? email;
  UserAddress? address;
  String? phone;
  String? website;
  UserCompany? company;

  User({
    this.id,
    this.avatar,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });
}

class UserAvatar {
  String? large;
  String? medium;
  String? thumbnail;

  UserAvatar({
    this.large,
    this.medium,
    this.thumbnail,
  });
}

class UserAddress {
  String? street;
  int? suite;
  String? city;
  int? zipcode;
  UserGeo? geo;

  UserAddress({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });
}

class UserGeo {
  double? lat;
  double? lng;

  UserGeo({
    this.lat,
    this.lng,
  });
}

class UserCompany {
  String? name;
  String? catchPhrase;
  String? bs;

  UserCompany({
    this.name,
    this.catchPhrase,
    this.bs,
  });
}
