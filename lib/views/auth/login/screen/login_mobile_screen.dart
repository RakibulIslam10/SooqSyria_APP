part of 'login_screen.dart';

class LoginMobileScreen extends GetView<LoginController> {
  const LoginMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodyWidget(context));
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              InputWidget(),
              LoginButton(),
              LoginOptionSection(),
              DoNotHaveAnAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
