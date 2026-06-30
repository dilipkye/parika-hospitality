class Location {
  final String id;
  final String name;
  final String address;
  final String area;
  final String city;
  final String phone;
  final String email;
  final String mapUrl;
  final String imageUrl;
  final List<String> facilities;
  final List<String> operatingHours;
  final String coordinates;

  Location({
    required this.id,
    required this.name,
    required this.address,
    required this.area,
    required this.city,
    required this.phone,
    required this.email,
    required this.mapUrl,
    required this.imageUrl,
    required this.facilities,
    required this.operatingHours,
    required this.coordinates,
  });
}

final List<Location> parikaLocations = [
  Location(
    id: 'richmond-town',
    name: 'Ramanashree Hotel - Richmond Town',
    address: 'Richmond Town, Bangalore',
    area: 'Richmond Town',
    city: 'Bangalore',
    phone: '+91-XXXX-XXXX-XX',
    email: 'richmond@parika.com',
    mapUrl: 'https://maps.google.com',
    imageUrl: 'assets/images/richmond-town.jpg',
    facilities: [
      'Kudla Restaurant',
      'Gourmet Kitchen & Bar',
      'Room Service (Food)',
      'Aapthi Hall (1st Floor)',
      'Golden Pearl Banquet Hall (5th Floor)',
    ],
    operatingHours: [
      'Mon-Sun: 7:00 AM - 11:00 PM',
    ],
    coordinates: '13.0827,77.5906',
  ),
  Location(
    id: 'sahakarnagar',
    name: 'P.M Square Building - Sahakarnagar',
    address: 'Sahakarnagar, Bangalore',
    area: 'Sahakarnagar',
    city: 'Bangalore',
    phone: '+91-XXXX-XXXX-XX',
    email: 'sahakarnagar@parika.com',
    mapUrl: 'https://maps.google.com',
    imageUrl: 'assets/images/sahakarnagar.jpg',
    facilities: [
      'Parika Coastal Village Restaurant',
      'Uptown Rooftop Bar & Grill',
      'Aapthi Hall',
    ],
    operatingHours: [
      'Mon-Sun: 11:00 AM - 11:00 PM',
    ],
    coordinates: '13.1939,77.5941',
  ),
];