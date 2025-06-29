part of 'profile_section_screen.dart';

class ProfileSectionTabletScreen extends GetView<ProfileSectionController> {
  const ProfileSectionTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('ProfileSection Tablet Screen'),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}
