part of 'job_offers_category_screen.dart';

class JobOffersCategoryMobileScreen extends GetView<JobOffersCategoryController> {
  const JobOffersCategoryMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('JobOffersCategory Mobile Screen'),
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
