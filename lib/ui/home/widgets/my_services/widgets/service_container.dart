import 'package:flutter/material.dart';
import 'package:tarundevindia/common/responsive/responsive.dart';
import 'package:tarundevindia/config/theme/app_colors.dart';

class ServiceContainer extends StatelessWidget {
  const ServiceContainer({
    Key? key,
    required this.description,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final String description;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screen = WebsiteScreen.of(context);

    return Card(
      margin: const EdgeInsets.all(16),
      color: AppColors.onlyBlue,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomPaint(
          foregroundPainter: const ServiceContainerBorderPainter(Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: screen.fromMTD(30, 40, 50),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  title,
                  style:
                      theme.textTheme.titleLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ServiceContainerBorderPainter extends CustomPainter {
  const ServiceContainerBorderPainter(this.color);

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final area = size.height * 0.3;
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke;

    final topLeftBorder = Path()
      ..moveTo(0, area)
      ..lineTo(0, 0)
      ..lineTo(area, 0);

    final bottomRightBorder = Path()
      ..moveTo(size.width - area, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - area);

    canvas.drawPath(topLeftBorder, paint);
    canvas.drawPath(bottomRightBorder, paint);
  }

  @override
  bool shouldRepaint(covariant ServiceContainerBorderPainter oldDelegate) {
    return color != oldDelegate.color;
  }
}
