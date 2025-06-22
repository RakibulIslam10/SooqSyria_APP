part of '../screen/home_screen.dart';

class RecentSerchesCard extends StatelessWidget {
  const RecentSerchesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          padding: EdgeInsets.only(top: Dimensions.verticalSize * 0.4),
          Strings.recentSearch,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.28,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(
                vertical: Dimensions.verticalSize * 0.5,
                horizontal: Dimensions.widthSize * 0.4,
              ),
              width: width * 0.85,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 10,
                    offset: const Offset(-2, 2),
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 10,
                    offset: const Offset(-2, 2),
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 10,
                    offset: const Offset(-2, 2),
                  ),

                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 12,
                    offset: const Offset(2, -2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Car Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/car.png',
                      width: 80,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Sizes.width.v10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TextWidget(
                        "BMW X2 2.0M Sport",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      TextWidget(
                        "VEHICLES",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
