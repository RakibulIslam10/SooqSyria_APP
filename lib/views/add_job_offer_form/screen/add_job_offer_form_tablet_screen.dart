part of 'add_job_offer_form_screen.dart';

class AddJobOfferFormTabletScreen extends GetView<AddJobOfferFormController> {
  const AddJobOfferFormTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('AddJobOfferForm Tablet Screen'),
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
