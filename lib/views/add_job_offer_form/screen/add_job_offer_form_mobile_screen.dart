part of 'add_job_offer_form_screen.dart';

class AddJobOfferFormMobileScreen extends GetView<AddJobOfferFormController> {
  const AddJobOfferFormMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
        child: ListView(
          children: [
            ReUseAppBarHeader(
              '${Strings.tellUsAboutYour} ${controller.args['SelectedCategory']}',
            ),
            ReUseHeading(
              controller.args['argTitle'],
              controller.args['SelectedCategory'],
            ),

            Column(
              children: [
                AddPlaceInputWidget(
                  controller: controller.aleppoController,
                  hintText: Strings.aleppo,
                ),
                Sizes.height.betweenInputBox,
                AddPlaceInputWidget(
                  controller: controller.makeModelController,
                  hintText: Strings.makeModel,
                ),
                Sizes.height.betweenInputBox,
                AddPlaceInputWidget(
                  controller: controller.trimController,
                  hintText: Strings.trim,
                ),
                Sizes.height.betweenInputBox,
                AddPlaceInputWidget(
                  controller: controller.regonalSpaceController,
                  hintText: Strings.regionalSpace,
                ),
                Sizes.height.betweenInputBox,
                AddPlaceInputWidget(
                  controller: controller.yearController,
                  hintText: Strings.year,
                ),
                Sizes.height.betweenInputBox,
                AddPlaceInputWidget(
                  controller: controller.kilomitersController,
                  hintText: Strings.kilomiters,
                ),
                Sizes.height.betweenInputBox,
                AddPlaceInputWidget(
                  controller: controller.bodyTypeController,
                  hintText: Strings.bodyTypes,
                ),
                Sizes.height.betweenInputBox,
                AddPlaceInputWidget(
                  controller: controller.priceController,
                  hintText: Strings.price,
                  textInputType: TextInputType.number,
                ),
                Sizes.height.betweenInputBox,

                AddPlaceInputWidget(
                  controller: controller.phoneNumberController,
                  hintText: Strings.phoneNumber,
                  textInputType: TextInputType.number,
                ),
                Sizes.height.betweenInputBox,

                PrimaryButton(title: Strings.next, onPressed: () {}),
              ],
            )

          ],
        ),
      ),
    );
  }
}
