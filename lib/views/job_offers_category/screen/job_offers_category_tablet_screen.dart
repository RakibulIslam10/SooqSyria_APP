part of 'job_offers_category_screen.dart';

class JobOffersCategoryTabletScreen extends GetView<JobOffersCategoryController> {
  const JobOffersCategoryTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('JobOffersCategory Tablet Screen'),
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
