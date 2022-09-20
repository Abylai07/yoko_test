abstract class AppAssets {
  static const images = _Images();
  static const svg = _Svg();
}

class _Images {
  const _Images();
  final String activity = 'assets/images/bitmap/activityBG.png';
  final String activityDetail = 'assets/images/bitmap/activityDetail.png';
  final String shymbulakLogo = 'assets/images/bitmap/shymbulak_logo.png';
}

class _Svg {
  const _Svg();
  final String google = 'assets/images/svg/google.svg';
  final String facebook = 'assets/images/svg/facebook.svg';
  final String shymbulakLogo = 'assets/images/svg/shymbulak.svg';
}
