part of 'navigation_screen.dart';

class NavigationMobileScreen extends GetView<NavigationController> {
  const NavigationMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Obx(() => controller.bodyPages[controller.selectedIndex.value]),
      bottomNavigationBar: const NavigationBarWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColor.primary  ,
        elevation: 6,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, size: 30, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
