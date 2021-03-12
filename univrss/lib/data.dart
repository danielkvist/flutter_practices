class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;

  PlanetInfo(
    this.position, {
    this.name,
    this.iconImage,
    this.description,
  });
}

List<PlanetInfo> planets = [
  PlanetInfo(
    1,
    name: 'Mercury',
    iconImage: 'assets/mercury.png',
    description:
        "Mercury is the closest planet to the sun, and it's also the smallest.",
  ),
  PlanetInfo(
    2,
    name: 'Venus',
    iconImage: 'assets/venus.png',
    description:
        "The second planet from the sun, Venus is Earth's twin in size.",
  ),
  PlanetInfo(
    3,
    name: 'Earth',
    iconImage: 'assets/earth.png',
    description:
        "The third planet from the sun, Earth is a waterworld. It's the only world known to harbor life.",
  ),
  PlanetInfo(
    4,
    name: 'Mars',
    iconImage: 'assets/mars.png',
    description:
        "The fourth planet from the sun is Mars, and it's a cold, desert-like place covered in dust.",
  ),
  PlanetInfo(
    5,
    name: 'Jupiter',
    iconImage: 'assets/jupiter.png',
    description: "The fifth planet from the sun, Jupiter is a giant gas world.",
  ),
  PlanetInfo(
    6,
    name: 'Saturn',
    iconImage: 'assets/saturn.png',
    description:
        "The sixth planet from the sun, Saturn is known most for its rings.",
  ),
  PlanetInfo(
    7,
    name: 'Uranus',
    iconImage: 'assets/uranus.png',
    description: "The seventh planet from the sun, Uranus is an oddball.",
  ),
  PlanetInfo(
    8,
    name: 'Neptune',
    iconImage: 'assets/neptune.png',
    description:
        "The eighth planet from the sun, Neptune is about the size of Uranus.",
  ),
];
