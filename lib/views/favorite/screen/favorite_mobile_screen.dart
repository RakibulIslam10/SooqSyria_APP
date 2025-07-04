part of 'favorite_screen.dart';

class FavoriteMobileScreen extends GetView<FavoriteController> {
  const FavoriteMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        backgroundColor: CustomColor.whiteColor,
        title: TextWidget(
          Strings.favorite,
          fontWeight: FontWeight.w500,
          color: CustomColor.grayColor,
        ),
        centerTitle: true,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Dimensions.defaultHorizontalSize.edgeHorizontal,
        child: Column(
          children: [
            Sizes.height.v20,
            TextHeadingBar(),
            Sizes.height.v20,
            AllFavouritesDefault(),
            Column(
              mainAxisAlignment: mainCenter,
              children: [
                TextWidget(Strings.youHaveNoFavoritesSavedOnThisList),
                Sizes.height.v10,
                TextWidget(
                  fontSize: Dimensions.titleSmall,
                  textAlign: TextAlign.center,
                  Strings.useTheFavoriteIconToSaveAdsThatYouWantToCheckLatter,
                  color: CustomColor.grayColor,
                ),
                Sizes.height.v40,

                Container(
                  padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
                  decoration: BoxDecoration(
                    border: Border.all(color: CustomColor.grayColor),
                    borderRadius: BorderRadius.circular(Dimensions.radius),
                  ),
                  child: TextWidget(
                    Strings.continueSearching,
                    fontSize: Dimensions.titleSmall,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
