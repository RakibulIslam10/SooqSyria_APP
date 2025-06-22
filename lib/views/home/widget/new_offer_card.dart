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
                    'https://executiveeducation.wharton.upenn.edu/wp-content/uploads/2020/08/2009-commercial-real-estate-600.jpg',
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
