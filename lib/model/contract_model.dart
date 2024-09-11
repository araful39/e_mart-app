class Contact {
  String name;
  String phoneNumber;
  String address;
  String country;

  Contact({
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.country,
  });

  @override
  String toString() {
    return 'Contact(name: $name, phoneNumber: $phoneNumber, address: $address, country: $country)';
  }
}  