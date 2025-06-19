import 'package:flutter/cupertino.dart';

import '../../../../base/themes/token.dart';
import '../../../../base/utils/dimensions.dart';
import '../../../../base/utils/size.dart';
import '../../../../base/widgets/text_widget.dart';
import '../../../../languages/strings.dart';

class ResendTextWidget extends StatelessWidget {
  const ResendTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainCenter,
      children: [
        Sizes.height.v40,
        TextWidget(
          Strings.haventGotTheEmail,
          fontSize: Dimensions.titleSmall,
          fontWeight: FontWeight.bold,
        ),
        TextWidget(
          Strings.resendEmail,
          fontSize: Dimensions.titleSmall,
          color: CustomColor.primary,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
