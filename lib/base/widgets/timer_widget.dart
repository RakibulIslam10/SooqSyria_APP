import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sooqyria/base/widgets/text_widget.dart';

import '../../languages/strings.dart';
import '../themes/token.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({
    super.key,
    required this.onResendCode,
  });

  final VoidCallback onResendCode;

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late int totalTimeInSeconds;
  Timer? _timer;
  bool showResend = false;

  @override
  void initState() {
    super.initState();
    totalTimeInSeconds = _parseTime('01:00');
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (totalTimeInSeconds > 0) {
        setState(() {
          totalTimeInSeconds--;
        });
      } else {
        setState(() {
          showResend = true; // Show "Resend" when the timer ends
        });
        timer.cancel();
      }
    });
  }

  void resetTimer() {
    setState(() {
      totalTimeInSeconds = _parseTime('01:00');
      showResend = false; // Hide "Resend" and show the timer again
    });
    startTimer();
  }

  // Parse the "mm:ss" format into total seconds
  int _parseTime(String time) {
    final parts = time.split(':');
    final minutes = int.parse(parts[0]);
    final seconds = int.parse(parts[1]);
    return minutes * 60 + seconds;
  }

  String formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final remainingSeconds = (seconds % 60).toString().padLeft(2, '0');
    return '$minutes:$remainingSeconds';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.verticalSize * 0.5,
      ),
      child: Row(
        mainAxisAlignment: mainCenter,
        children: [
          TextWidget(
            Strings.youCanResend,
            typographyStyle: TypographyStyle.labelLarge,
          ),
          Sizes.width.v5,
          TextWidget(
            showResend ? Strings.resend : formatTime(totalTimeInSeconds),
            typographyStyle: TypographyStyle.labelLarge,
            color: CustomColor.primary,
            onTap: () {
              if (showResend) {
                widget.onResendCode();
                resetTimer();
              }
            },
          ),
        ],
      ),
    );
  }
}

