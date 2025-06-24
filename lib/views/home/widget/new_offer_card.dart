part of '../screen/home_screen.dart';

class NewOfferCard extends GetView<HomeController> {
  const NewOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          padding: EdgeInsets.only(bottom: Dimensions.verticalSize * 0.4),
          Strings.whatsNewOnsSoqSyria,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.4,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.asseticltd.com/images/top-real-estate-companies-bangladesh.webp',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.6),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
