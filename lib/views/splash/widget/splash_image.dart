import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sooqyria/assets/assets.dart';
import 'package:sooqyria/base/utils/basic_import.dart';

import '../../../base/api/services/basic_services.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(Dimensions.paddingSize * 0.6),
      child: Center(child: Image.asset(Assets.logo.appTextLogo.path,)),
    );

    //   CachedNetworkImage(
    //   imageUrl: '',
    //   placeholder: (context, url) => const Text(''),
    //   errorWidget: (context, url, error) => const Text(''),
    //   fit: BoxFit.cover,
    // );
  }
}
