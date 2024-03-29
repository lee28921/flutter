class User {
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;

  User(this.id, this.name, this.username, this.email, this.address, this.phone,
      this.website, this.company);
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;
}

class Geo {
  String lat;
  String lng;
}

class Company {
  String name;
  String catchPhrase;
  String bs;
}
