import 'package:flutter/material.dart';

class ClippedContainer extends StatelessWidget {
  Color color;
  double? height;
  String? backgroundImageUrl;
  bool isAssetImage;
  bool hasOpacity;
  double OpacityVal;

  ClippedContainer(
      {super.key,
      required this.color,
      this.height,
      this.backgroundImageUrl,
      this.isAssetImage = true,
      this.hasOpacity = false,
      this.OpacityVal = 0.5});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomEllipseClipper(),
      child: Container(
        width: double.infinity,
        height: height ?? 272.0,
        decoration: BoxDecoration(
            image: backgroundImageUrl == null
                ? null
                : isAssetImage
                    ? DecorationImage(
                        image: AssetImage(backgroundImageUrl!),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(hasOpacity
                              ? OpacityVal
                              : 0), // Adjust the opacity value (0.0 to 1.0)
                          BlendMode
                              .darken, // You can choose different BlendModes based on your preference
                        ))
                    : DecorationImage(
                        image: NetworkImage(backgroundImageUrl!),
                        fit: BoxFit.cover),
            color: color), // Set a darker opacity level (e.g., 0.7)
      ),
    );
  }
}

class BottomEllipseClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width,
        0); // this draws the line from current point to the right top position of the widget
    path.close(); // this closes the loop from current position to the starting point of widget
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
