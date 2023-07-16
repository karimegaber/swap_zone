class AssetsManager {
  // Images
  static String imageGetter({
    required String imageName,
    bool svg = false,
  }) {
    String extension = svg ? 'svg' : 'png';

    return 'assets/images/$imageName.$extension';
  }

  // Icons
  static String iconGetter({
    required String iconName,
  }) {
    return 'assets/icons/$iconName.svg';
  }
}
