part of 'splash_screen.dart';

class SplashMobileScreen extends GetView<SplashController> {
  const SplashMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundScaffoldColor,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(child: SplashImage());
  }
}
