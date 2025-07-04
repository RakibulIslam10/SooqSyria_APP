import 'package:flutter/material.dart';

class Assets {
  Assets._();

  static const $Icons icons = $Icons();
  static const $Logo logo = $Logo();
}

class AssetGen {
  const AssetGen(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class $Icons {
  const $Icons();

  String get verified => 'assets/icons/verified.svg';

  String get empty => 'assets/icons/empty.svg';

  String get reject => 'assets/icons/reject.svg';

  String get success => 'assets/icons/success.svg';

  String get notification => 'assets/icons/notification.svg';

  String get menu => 'assets/icons/menu.svg';

  String get support => 'assets/icons/ss.png';

  String get global => 'assets/icons/global.png';

  String get call => 'assets/icons/call icon.png';

  String get acs => 'assets/icons/acs.png';

  String get police => 'assets/icons/police.png';

  String get profile => 'assets/icons/pp.png';
  String get goArrow => 'assets/icons/goarrow.png';
  String get home => 'assets/icons/home.svg';
  String get menuNav => 'assets/icons/menuNav.svg';
  String get inbox => 'assets/icons/inboxNav.svg';

  List<dynamic> get values =>
      [
        verified,
        empty,
        reject,
        success,
        menu,
        support,
        global,
        call,
        acs,
        police,
        profile,
        goArrow,
        menuNav,
        inbox,
      ];
}

class $Logo {
  const $Logo();

  AssetGen get appLauncher => const AssetGen('assets/logo/appLauncher.png');

  AssetGen get basicLogo => const AssetGen('assets/logo/logo.png');

  AssetGen get appTextLogo => const AssetGen('assets/logo/apptext.png');

  List<dynamic> get values => [appLauncher, basicLogo, appTextLogo];
}
